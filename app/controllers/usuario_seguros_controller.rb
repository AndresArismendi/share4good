class UsuarioSegurosController < ApplicationController
  before_action :set_usuario_seguro, only: [:show, :edit, :update, :destroy]

  # GET /usuario_seguros
  # GET /usuario_seguros.json
  def index
    @usuario_seguros = UsuarioSeguro.all
  end

  # GET /usuario_seguros/1
  # GET /usuario_seguros/1.json
  def show
  end

  # GET /usuario_seguros/new
  def new
    @usuario_seguro = UsuarioSeguro.new
  end

  # GET /usuario_seguros/1/edit
  def edit
  end

  # POST /usuario_seguros
  # POST /usuario_seguros.json
  def create
    @usuario_seguro = UsuarioSeguro.new(usuario_seguro_params)

    respond_to do |format|
      if @usuario_seguro.save
        format.html { redirect_to @usuario_seguro, notice: 'Usuario seguro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usuario_seguro }
      else
        format.html { render action: 'new' }
        format.json { render json: @usuario_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_seguros/1
  # PATCH/PUT /usuario_seguros/1.json
  def update
    respond_to do |format|
      if @usuario_seguro.update(usuario_seguro_params)
        format.html { redirect_to @usuario_seguro, notice: 'Usuario seguro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuario_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_seguros/1
  # DELETE /usuario_seguros/1.json
  def destroy
    @usuario_seguro.destroy
    respond_to do |format|
      format.html { redirect_to usuario_seguros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_seguro
      @usuario_seguro = UsuarioSeguro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_seguro_params
      params.require(:usuario_seguro).permit(:user_id, :usuario_seguro_enabled, :usuario_seguro_date)
    end
end
