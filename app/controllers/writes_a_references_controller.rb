class WritesAReferencesController < ApplicationController
  before_action :set_writes_a_reference, only: [:show, :edit, :update, :destroy]

  # GET /writes_a_references
  # GET /writes_a_references.json
  def index
    @writes_a_references = WritesAReference.all
  end

  # GET /writes_a_references/1
  # GET /writes_a_references/1.json
  def show
  end

  # GET /writes_a_references/new
  def new
    @writes_a_reference = WritesAReference.new
  end

  # GET /writes_a_references/1/edit
  def edit
  end

  # POST /writes_a_references
  # POST /writes_a_references.json
  def create
    @writes_a_reference = WritesAReference.new(writes_a_reference_params)

    respond_to do |format|
      if @writes_a_reference.save
        format.html { redirect_to @writes_a_reference, notice: 'Writes a reference was successfully created.' }
        format.json { render action: 'show', status: :created, location: @writes_a_reference }
      else
        format.html { render action: 'new' }
        format.json { render json: @writes_a_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writes_a_references/1
  # PATCH/PUT /writes_a_references/1.json
  def update
    respond_to do |format|
      if @writes_a_reference.update(writes_a_reference_params)
        format.html { redirect_to @writes_a_reference, notice: 'Writes a reference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @writes_a_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writes_a_references/1
  # DELETE /writes_a_references/1.json
  def destroy
    @writes_a_reference.destroy
    respond_to do |format|
      format.html { redirect_to writes_a_references_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writes_a_reference
      @writes_a_reference = WritesAReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def writes_a_reference_params
      params.require(:writes_a_reference).permit(:user_id, :trip_id, :reference_id, :is_driver)
    end
end
