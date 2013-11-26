class PonsController < ApplicationController
  before_action :set_pon, only: [:show, :edit, :update, :destroy]

  # GET /pons
  # GET /pons.json
  def index
    @pons = Pon.all
  end

  # GET /pons/1
  # GET /pons/1.json
  def show
  end

  # GET /pons/new
  def new
    @pon = Pon.new
  end

  # GET /pons/1/edit
  def edit
  end

  # POST /pons
  # POST /pons.json
  def create
    @pon = Pon.new(pon_params)

    respond_to do |format|
      if @pon.save
        format.html { redirect_to @pon, notice: 'Pon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pon }
      else
        format.html { render action: 'new' }
        format.json { render json: @pon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pons/1
  # PATCH/PUT /pons/1.json
  def update
    respond_to do |format|
      if @pon.update(pon_params)
        format.html { redirect_to @pon, notice: 'Pon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pons/1
  # DELETE /pons/1.json
  def destroy
    @pon.destroy
    respond_to do |format|
      format.html { redirect_to pons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pon
      @pon = Pon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pon_params
      params.require(:pon).permit(:description, :string)
    end
end
