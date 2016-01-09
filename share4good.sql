/*==============================================================*/
/* DBMS name:      PostgreSQL 7.3                               */
/* Created on:     08-01-2016 21:39:46                          */
/*==============================================================*/


drop index PUBLISHED_FK;

drop index ADVERTISEMENT_NOTICE_PK;

drop table ADVERTISEMENT_NOTICE;

drop index BRAND_PK;

drop table BRAND;

drop index CATEGORY_PK;

drop table CATEGORY;

drop index BELONGS_TO_FK;

drop index CITY_PK;

drop table CITY;

drop index CLIENT_PK;

drop table CLIENT;

drop index COLOUR_PK;

drop table COLOUR;

drop index HAS_VEHICLE_FK;

drop index HAS_VEHICLE2_FK;

drop index HAS_VEHICLE_PK;

drop table HAS_VEHICLE;

drop index LOG_SQL_PK;

drop table LOG_SQL;

drop table MODEL;

drop index IT_IS_FOUND_IN_FK;

drop index NEIGHBOORHOOD_PK;

drop table NEIGHBOORHOOD;

drop index REFERENCE_PK;

drop table REFERENCE;

drop index REGION_PK;

drop table REGION;

drop index SENDS_FK;

drop index SUGGESTION_PK;

drop table SUGGESTION;

drop index IT_ACCOMPLISHES_FK;

drop index STARTS_IN_FK;

drop index GOES_TO_FK;

drop index TRIP_PK;

drop table TRIP;

drop index HAS_CATEGORY_FK;

drop index USER_PK;

drop table "USER";

drop index CAN_BE_FK;

drop index USUARIO_SEGURO_PK;

drop table USUARIO_SEGURO;

drop index HAS_BRAND_FK;

drop index HAS_COLOUR_FK;

drop index VEHICLE_PK;

drop table VEHICLE;

drop index WRITES_A_REFERENCE_FK;

drop index WRITES_A_REFERENCE3_FK;

drop index WRITES_A_REFERENCE2_FK;

drop index WRITES_A_REFERENCE_PK;

drop table WRITES_A_REFERENCE;

/*==============================================================*/
/* Table: ADVERTISEMENT_NOTICE                                  */
/*==============================================================*/
create table ADVERTISEMENT_NOTICE (
NOTICE_ID            SERIAL               not null,
CLIENT_ID            INT4                 not null,
NOTICE_TITLE         VARCHAR(50)          null,
NOTICE_STARTING_DATE DATE                 null,
NOTICE_IMAGE         VARCHAR(400)         null,
NOTICE_INFORMATION   VARCHAR(1024)        null,
constraint PK_ADVERTISEMENT_NOTICE primary key (NOTICE_ID)
);

/*==============================================================*/
/* Index: ADVERTISEMENT_NOTICE_PK                               */
/*==============================================================*/
create unique index ADVERTISEMENT_NOTICE_PK on ADVERTISEMENT_NOTICE (
NOTICE_ID
);

/*==============================================================*/
/* Index: PUBLISHED_FK                                          */
/*==============================================================*/
create  index PUBLISHED_FK on ADVERTISEMENT_NOTICE (
CLIENT_ID
);

/*==============================================================*/
/* Table: BRAND                                                 */
/*==============================================================*/
create table BRAND (
BRAND_ID             SERIAL               not null,
BRAND_NAME           VARCHAR(100)         null,
constraint PK_BRAND primary key (BRAND_ID)
);

/*==============================================================*/
/* Index: BRAND_PK                                              */
/*==============================================================*/
create unique index BRAND_PK on BRAND (
BRAND_ID
);

/*==============================================================*/
/* Table: CATEGORY                                              */
/*==============================================================*/
create table CATEGORY (
CATEGORY_ID          SERIAL               not null,
CATEGORY_NAME        VARCHAR(256)         null,
CATEGORY_FROM        VARCHAR(1024)        null,
CATEGORY_TO          VARCHAR(1024)        null,
constraint PK_CATEGORY primary key (CATEGORY_ID)
);

/*==============================================================*/
/* Index: CATEGORY_PK                                           */
/*==============================================================*/
create unique index CATEGORY_PK on CATEGORY (
CATEGORY_ID
);

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
create table CITY (
CITY_ID              SERIAL               not null,
REGION_ID            INT4                 not null,
CITY_NAME            VARCHAR(256)         null,
constraint PK_CITY primary key (CITY_ID)
);

/*==============================================================*/
/* Index: CITY_PK                                               */
/*==============================================================*/
create unique index CITY_PK on CITY (
CITY_ID
);

/*==============================================================*/
/* Index: BELONGS_TO_FK                                         */
/*==============================================================*/
create  index BELONGS_TO_FK on CITY (
REGION_ID
);

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT (
CLIENT_ID            SERIAL               not null,
CLIENT_NAME          VARCHAR(50)          null,
CLIENT_LAST_NAME     VARCHAR(50)          null,
CLIENT_RUT           VARCHAR(20)          null,
CLIENT_PHONE         VARCHAR(20)          null,
CLIENT_MAIL          VARCHAR(50)          null,
CLIENT_INFORMATION   VARCHAR(1024)        null,
constraint PK_CLIENT primary key (CLIENT_ID)
);

/*==============================================================*/
/* Index: CLIENT_PK                                             */
/*==============================================================*/
create unique index CLIENT_PK on CLIENT (
CLIENT_ID
);

/*==============================================================*/
/* Table: COLOUR                                                */
/*==============================================================*/
create table COLOUR (
COLOUR_ID            SERIAL               not null,
COLOUR_NAME          VARCHAR(100)         null,
constraint PK_COLOUR primary key (COLOUR_ID)
);

/*==============================================================*/
/* Index: COLOUR_PK                                             */
/*==============================================================*/
create unique index COLOUR_PK on COLOUR (
COLOUR_ID
);

/*==============================================================*/
/* Table: HAS_VEHICLE                                           */
/*==============================================================*/
create table HAS_VEHICLE (
HAS_VEHICLE_ID       SERIAL               not null,
VEHICULO_ID          INT4                 not null,
USER_ID              INT4                 not null,
constraint PK_HAS_VEHICLE primary key (HAS_VEHICLE_ID)
);

/*==============================================================*/
/* Index: HAS_VEHICLE_PK                                        */
/*==============================================================*/
create unique index HAS_VEHICLE_PK on HAS_VEHICLE (
HAS_VEHICLE_ID
);

/*==============================================================*/
/* Index: HAS_VEHICLE2_FK                                       */
/*==============================================================*/
create  index HAS_VEHICLE2_FK on HAS_VEHICLE (
USER_ID
);

/*==============================================================*/
/* Index: HAS_VEHICLE_FK                                        */
/*==============================================================*/
create  index HAS_VEHICLE_FK on HAS_VEHICLE (
VEHICULO_ID
);

/*==============================================================*/
/* Table: LOG_SQL                                               */
/*==============================================================*/
create table LOG_SQL (
LOG_SQL_ID           SERIAL               not null,
LOG_SQL_TMS          DATE                 null,
LOG_SQL_TABLE        VARCHAR(50)          null,
LOG_SQL_OPERAC       VARCHAR(50)          null,
LOG_SQL_USER         VARCHAR(50)          null,
LOG_SQL_DAT_ANTES    VARCHAR(50)          null,
LOG_SQL_DAT_DSPS     VARCHAR(50)          null,
LOG_SQL_OPE_DET      VARCHAR(100)         null,
constraint PK_LOG_SQL primary key (LOG_SQL_ID)
);

/*==============================================================*/
/* Index: LOG_SQL_PK                                            */
/*==============================================================*/
create unique index LOG_SQL_PK on LOG_SQL (
LOG_SQL_ID
);

/*==============================================================*/
/* Table: MODEL                                                 */
/*==============================================================*/
create table MODEL (
MODEL_ID             SERIAL               not null,
MODEL_NAME           VARCHAR(100)         null,
constraint PK_MODEL primary key (MODEL_ID)
);

/*==============================================================*/
/* Table: NEIGHBOORHOOD                                         */
/*==============================================================*/
create table NEIGHBOORHOOD (
NEIGHBOORHOOD_ID     SERIAL               not null,
CITY_ID              INT4                 not null,
NEIGHBOORHOOD_NOMBRE VARCHAR(256)         null,
constraint PK_NEIGHBOORHOOD primary key (NEIGHBOORHOOD_ID)
);

/*==============================================================*/
/* Index: NEIGHBOORHOOD_PK                                      */
/*==============================================================*/
create unique index NEIGHBOORHOOD_PK on NEIGHBOORHOOD (
NEIGHBOORHOOD_ID
);

/*==============================================================*/
/* Index: IT_IS_FOUND_IN_FK                                     */
/*==============================================================*/
create  index IT_IS_FOUND_IN_FK on NEIGHBOORHOOD (
CITY_ID
);

/*==============================================================*/
/* Table: REFERENCE                                             */
/*==============================================================*/
create table REFERENCE (
REFERENCE_ID         SERIAL               not null,
REFERENCE_MARK       INT4                 null,
REFERENCE_COMMENT    VARCHAR(1024)        null,
REFERENCE_ANSWER     VARCHAR(1024)        null,
REFERENCE_DATE       DATE                 null,
constraint PK_REFERENCE primary key (REFERENCE_ID)
);

/*==============================================================*/
/* Index: REFERENCE_PK                                          */
/*==============================================================*/
create unique index REFERENCE_PK on REFERENCE (
REFERENCE_ID
);

/*==============================================================*/
/* Table: REGION                                                */
/*==============================================================*/
create table REGION (
REGION_ID            SERIAL               not null,
REGION_NAME          VARCHAR(1024)        null,
constraint PK_REGION primary key (REGION_ID)
);

/*==============================================================*/
/* Index: REGION_PK                                             */
/*==============================================================*/
create unique index REGION_PK on REGION (
REGION_ID
);

/*==============================================================*/
/* Table: SUGGESTION                                            */
/*==============================================================*/
create table SUGGESTION (
SUGGESTION_ID        SERIAL               not null,
USER_ID              INT4                 not null,
SUGGESTION_TEXTO     VARCHAR(1024)        null,
SUGGESTION_FECHA     DATE                 null,
constraint PK_SUGGESTION primary key (SUGGESTION_ID)
);

/*==============================================================*/
/* Index: SUGGESTION_PK                                         */
/*==============================================================*/
create unique index SUGGESTION_PK on SUGGESTION (
SUGGESTION_ID
);

/*==============================================================*/
/* Index: SENDS_FK                                              */
/*==============================================================*/
create  index SENDS_FK on SUGGESTION (
USER_ID
);

/*==============================================================*/
/* Table: TRIP                                                  */
/*==============================================================*/
create table TRIP (
TRIP_ID              SERIAL               not null,
NEIGHBOORHOOD_ID     INT4                 not null,
NEI_NEIGHBOORHOOD_ID INT4                 not null,
TRI_TRIP_ID          INT4                 null,
TRIP_HOUR            DATE                 null,
TRIP_PRICE           INT4                 null,
TRIP_ACCOMPLISHED    INT4                 null,
TRIP_CAPACITY        INT4                 null,
TRIP_LUGGAGE         BOOL                 null,
TRIP_PET             BOOL                 null,
TRIP_SMOKER          BOOL                 null,
constraint PK_TRIP primary key (TRIP_ID)
);

/*==============================================================*/
/* Index: TRIP_PK                                               */
/*==============================================================*/
create unique index TRIP_PK on TRIP (
TRIP_ID
);

/*==============================================================*/
/* Index: GOES_TO_FK                                            */
/*==============================================================*/
create  index GOES_TO_FK on TRIP (
NEIGHBOORHOOD_ID
);

/*==============================================================*/
/* Index: STARTS_IN_FK                                          */
/*==============================================================*/
create  index STARTS_IN_FK on TRIP (
NEI_NEIGHBOORHOOD_ID
);

/*==============================================================*/
/* Index: IT_ACCOMPLISHES_FK                                    */
/*==============================================================*/
create  index IT_ACCOMPLISHES_FK on TRIP (
TRI_TRIP_ID
);

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" (
USER_ID              SERIAL               not null,
CATEGORY_ID          INT4                 not null,
USER_AGE             INT4                 null,
USER_TELEPHONE       VARCHAR(256)         null,
USER_EMAIL           VARCHAR(256)         null,
USER_NAME            VARCHAR(256)         null,
USER_LAST_NAME       VARCHAR(256)         null,
constraint PK_USER primary key (USER_ID)
);

/*==============================================================*/
/* Index: USER_PK                                               */
/*==============================================================*/
create unique index USER_PK on "USER" (
USER_ID
);

/*==============================================================*/
/* Index: HAS_CATEGORY_FK                                       */
/*==============================================================*/
create  index HAS_CATEGORY_FK on "USER" (
CATEGORY_ID
);

/*==============================================================*/
/* Table: USUARIO_SEGURO                                        */
/*==============================================================*/
create table USUARIO_SEGURO (
USUARIO_SEGURO_ID    SERIAL               not null,
USER_ID              INT4                 not null,
USUARIO_SEGURO_ENABLED INT4                 null,
USUARIO_SEGURO_DATE  DATE                 null,
constraint PK_USUARIO_SEGURO primary key (USUARIO_SEGURO_ID)
);

/*==============================================================*/
/* Index: USUARIO_SEGURO_PK                                     */
/*==============================================================*/
create unique index USUARIO_SEGURO_PK on USUARIO_SEGURO (
USUARIO_SEGURO_ID
);

/*==============================================================*/
/* Index: CAN_BE_FK                                             */
/*==============================================================*/
create  index CAN_BE_FK on USUARIO_SEGURO (
USER_ID
);

/*==============================================================*/
/* Table: VEHICLE                                               */
/*==============================================================*/
create table VEHICLE (
VEHICULO_ID          SERIAL               not null,
COLOUR_ID            INT4                 not null,
BRAND_ID             INT4                 not null,
VEHICLE_NUMBER_PLATE VARCHAR(50)          null,
constraint PK_VEHICLE primary key (VEHICULO_ID)
);

/*==============================================================*/
/* Index: VEHICLE_PK                                            */
/*==============================================================*/
create unique index VEHICLE_PK on VEHICLE (
VEHICULO_ID
);

/*==============================================================*/
/* Index: HAS_COLOUR_FK                                         */
/*==============================================================*/
create  index HAS_COLOUR_FK on VEHICLE (
COLOUR_ID
);

/*==============================================================*/
/* Index: HAS_BRAND_FK                                          */
/*==============================================================*/
create  index HAS_BRAND_FK on VEHICLE (
BRAND_ID
);

/*==============================================================*/
/* Table: WRITES_A_REFERENCE                                    */
/*==============================================================*/
create table WRITES_A_REFERENCE (
WRITE_ID             SERIAL               not null,
USER_ID              INT4                 not null,
TRIP_ID              INT4                 not null,
REFERENCE_ID         INT4                 not null,
IS_DRIVER            BOOL                 null,
constraint PK_WRITES_A_REFERENCE primary key (WRITE_ID)
);

/*==============================================================*/
/* Index: WRITES_A_REFERENCE_PK                                 */
/*==============================================================*/
create unique index WRITES_A_REFERENCE_PK on WRITES_A_REFERENCE (
WRITE_ID
);

/*==============================================================*/
/* Index: WRITES_A_REFERENCE2_FK                                */
/*==============================================================*/
create  index WRITES_A_REFERENCE2_FK on WRITES_A_REFERENCE (
USER_ID
);

/*==============================================================*/
/* Index: WRITES_A_REFERENCE3_FK                                */
/*==============================================================*/
create  index WRITES_A_REFERENCE3_FK on WRITES_A_REFERENCE (
TRIP_ID
);

/*==============================================================*/
/* Index: WRITES_A_REFERENCE_FK                                 */
/*==============================================================*/
create  index WRITES_A_REFERENCE_FK on WRITES_A_REFERENCE (
REFERENCE_ID
);

alter table ADVERTISEMENT_NOTICE
   add constraint FK_ADVERTIS_PUBLISHED_CLIENT foreign key (CLIENT_ID)
      references CLIENT (CLIENT_ID)
      on delete restrict on update restrict;

alter table CITY
   add constraint FK_CITY_BELONGS_T_REGION foreign key (REGION_ID)
      references REGION (REGION_ID)
      on delete restrict on update restrict;

alter table HAS_VEHICLE
   add constraint FK_HAS_VEHI_HAS_VEHIC_VEHICLE foreign key (VEHICULO_ID)
      references VEHICLE (VEHICULO_ID)
      on delete restrict on update restrict;

alter table HAS_VEHICLE
   add constraint FK_HAS_VEHI_HAS_VEHIC_USER foreign key (USER_ID)
      references "USER" (USER_ID)
      on delete restrict on update restrict;

alter table NEIGHBOORHOOD
   add constraint FK_NEIGHBOO_IT_IS_FOU_CITY foreign key (CITY_ID)
      references CITY (CITY_ID)
      on delete restrict on update restrict;

alter table SUGGESTION
   add constraint FK_SUGGESTI_SENDS_USER foreign key (USER_ID)
      references "USER" (USER_ID)
      on delete restrict on update restrict;

alter table TRIP
   add constraint FK_TRIP_GOES_TO_NEIGHBOO foreign key (NEIGHBOORHOOD_ID)
      references NEIGHBOORHOOD (NEIGHBOORHOOD_ID)
      on delete restrict on update restrict;

alter table TRIP
   add constraint FK_TRIP_IT_ACCOMP_TRIP foreign key (TRI_TRIP_ID)
      references TRIP (TRIP_ID)
      on delete restrict on update restrict;

alter table TRIP
   add constraint FK_TRIP_STARTS_IN_NEIGHBOO foreign key (NEI_NEIGHBOORHOOD_ID)
      references NEIGHBOORHOOD (NEIGHBOORHOOD_ID)
      on delete restrict on update restrict;

alter table "USER"
   add constraint FK_USER_HAS_CATEG_CATEGORY foreign key (CATEGORY_ID)
      references CATEGORY (CATEGORY_ID)
      on delete restrict on update restrict;

alter table USUARIO_SEGURO
   add constraint FK_USUARIO__CAN_BE_USER foreign key (USER_ID)
      references "USER" (USER_ID)
      on delete restrict on update restrict;

alter table VEHICLE
   add constraint FK_VEHICLE_HAS_BRAND_BRAND foreign key (BRAND_ID)
      references BRAND (BRAND_ID)
      on delete restrict on update restrict;

alter table VEHICLE
   add constraint FK_VEHICLE_HAS_COLOU_COLOUR foreign key (COLOUR_ID)
      references COLOUR (COLOUR_ID)
      on delete restrict on update restrict;

alter table WRITES_A_REFERENCE
   add constraint FK_WRITES_A_WRITES_A__REFERENC foreign key (REFERENCE_ID)
      references REFERENCE (REFERENCE_ID)
      on delete restrict on update restrict;

alter table WRITES_A_REFERENCE
   add constraint FK_WRITES_A_WRITES_A__USER foreign key (USER_ID)
      references "USER" (USER_ID)
      on delete restrict on update restrict;

alter table WRITES_A_REFERENCE
   add constraint FK_WRITES_A_WRITES_A__TRIP foreign key (TRIP_ID)
      references TRIP (TRIP_ID)
      on delete restrict on update restrict;

