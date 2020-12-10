class VotationsController < ApplicationController
  before_action :set_votation, only: [:show, :edit, :update, :destroy]

  # GET /votations
  # GET /votations.json
  def index
    @votations = Votation.all
  end

  # GET /votations/1
  # GET /votations/1.json
  def show
  end

  # GET /votations/new
  def new
    @votation = Votation.new
  end

  # GET /votations/1/edit
  def edit
  end

  # POST /votations
  # POST /votations.json
  def create
    @votation = Votation.new(votation_params)

    respond_to do |format|
      if @votation.save
        format.html { redirect_to @votation, notice: 'Votation was successfully created.' }
        format.json { render :show, status: :created, location: @votation }
      else
        format.html { render :new }
        format.json { render json: @votation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votations/1
  # PATCH/PUT /votations/1.json
  def update
    respond_to do |format|
      if @votation.update(votation_params)
        format.html { redirect_to @votation, notice: 'Votation was successfully updated.' }
        format.json { render :show, status: :ok, location: @votation }
      else
        format.html { render :edit }
        format.json { render json: @votation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votations/1
  # DELETE /votations/1.json
  def destroy
    @votation.destroy
    respond_to do |format|
      format.html { redirect_to votations_url, notice: 'Votation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_votation
      @votation = Votation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def votation_params
      params.require(:votation).permit(:name, :cpf, :sector, :registration, :birthday, :servidorsesec, :servidorgmf, :servidordc)
    end
end
