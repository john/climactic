class IndustrySectorsController < ApplicationController
  before_action :set_industry_sector, only: %i[ show edit update destroy ]

  # GET /industry_sectors or /industry_sectors.json
  def index
    @industry_sectors = IndustrySector.all
  end

  # GET /industry_sectors/1 or /industry_sectors/1.json
  def show
  end

  # GET /industry_sectors/new
  def new
    @industry_sector = IndustrySector.new
  end

  # GET /industry_sectors/1/edit
  def edit
  end

  # POST /industry_sectors or /industry_sectors.json
  def create
    @industry_sector = IndustrySector.new(industry_sector_params)

    respond_to do |format|
      if @industry_sector.save
        format.html { redirect_to @industry_sector, notice: "Industry sector was successfully created." }
        format.json { render :show, status: :created, location: @industry_sector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @industry_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industry_sectors/1 or /industry_sectors/1.json
  def update
    respond_to do |format|
      if @industry_sector.update(industry_sector_params)
        format.html { redirect_to @industry_sector, notice: "Industry sector was successfully updated." }
        format.json { render :show, status: :ok, location: @industry_sector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @industry_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_sectors/1 or /industry_sectors/1.json
  def destroy
    @industry_sector.destroy
    respond_to do |format|
      format.html { redirect_to industry_sectors_url, notice: "Industry sector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industry_sector
      @industry_sector = IndustrySector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def industry_sector_params
      params.require(:industry_sector).permit(:code, :name)
    end
end
