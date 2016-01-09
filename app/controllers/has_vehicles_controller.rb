class HasVehiclesController < ApplicationController
  before_action :set_has_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /has_vehicles
  # GET /has_vehicles.json
  def index
    @has_vehicles = HasVehicle.all
  end

  # GET /has_vehicles/1
  # GET /has_vehicles/1.json
  def show
  end

  # GET /has_vehicles/new
  def new
    @has_vehicle = HasVehicle.new
  end

  # GET /has_vehicles/1/edit
  def edit
  end

  # POST /has_vehicles
  # POST /has_vehicles.json
  def create
    @has_vehicle = HasVehicle.new(has_vehicle_params)

    respond_to do |format|
      if @has_vehicle.save
        format.html { redirect_to @has_vehicle, notice: 'Has vehicle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @has_vehicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @has_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_vehicles/1
  # PATCH/PUT /has_vehicles/1.json
  def update
    respond_to do |format|
      if @has_vehicle.update(has_vehicle_params)
        format.html { redirect_to @has_vehicle, notice: 'Has vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @has_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_vehicles/1
  # DELETE /has_vehicles/1.json
  def destroy
    @has_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to has_vehicles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_vehicle
      @has_vehicle = HasVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_vehicle_params
      params.require(:has_vehicle).permit(:vehiculo_id, :user_id)
    end
end
