class NeighboorhoodsController < ApplicationController
  before_action :set_neighboorhood, only: [:show, :edit, :update, :destroy]

  # GET /neighboorhoods
  # GET /neighboorhoods.json
  def index
    @neighboorhoods = Neighboorhood.all
  end

  # GET /neighboorhoods/1
  # GET /neighboorhoods/1.json
  def show
  end

  # GET /neighboorhoods/new
  def new
    @neighboorhood = Neighboorhood.new
  end

  # GET /neighboorhoods/1/edit
  def edit
  end

  # POST /neighboorhoods
  # POST /neighboorhoods.json
  def create
    @neighboorhood = Neighboorhood.new(neighboorhood_params)

    respond_to do |format|
      if @neighboorhood.save
        format.html { redirect_to @neighboorhood, notice: 'Neighboorhood was successfully created.' }
        format.json { render action: 'show', status: :created, location: @neighboorhood }
      else
        format.html { render action: 'new' }
        format.json { render json: @neighboorhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neighboorhoods/1
  # PATCH/PUT /neighboorhoods/1.json
  def update
    respond_to do |format|
      if @neighboorhood.update(neighboorhood_params)
        format.html { redirect_to @neighboorhood, notice: 'Neighboorhood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @neighboorhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighboorhoods/1
  # DELETE /neighboorhoods/1.json
  def destroy
    @neighboorhood.destroy
    respond_to do |format|
      format.html { redirect_to neighboorhoods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neighboorhood
      @neighboorhood = Neighboorhood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neighboorhood_params
      params.require(:neighboorhood).permit(:city_id, :neighboorhood_nombre)
    end
end
