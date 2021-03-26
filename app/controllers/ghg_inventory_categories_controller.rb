class GhgInventoryCategoriesController < ApplicationController
  before_action :set_ghg_inventory_category, only: %i[ show edit update destroy ]

  # GET /ghg_inventory_categories or /ghg_inventory_categories.json
  def index
    @ghg_inventory_categories = GhgInventoryCategory.all
  end

  # GET /ghg_inventory_categories/1 or /ghg_inventory_categories/1.json
  def show
  end

  # GET /ghg_inventory_categories/new
  def new
    @ghg_inventory_category = GhgInventoryCategory.new
  end

  # GET /ghg_inventory_categories/1/edit
  def edit
  end

  # POST /ghg_inventory_categories or /ghg_inventory_categories.json
  def create
    @ghg_inventory_category = GhgInventoryCategory.new(ghg_inventory_category_params)

    respond_to do |format|
      if @ghg_inventory_category.save
        format.html { redirect_to ghg_inventory_categories_path, notice: "Ghg inventory category was successfully created." }
        format.json { render :show, status: :created, location: @ghg_inventory_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ghg_inventory_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ghg_inventory_categories/1 or /ghg_inventory_categories/1.json
  def update
    respond_to do |format|
      if @ghg_inventory_category.update(ghg_inventory_category_params)
        format.html { redirect_to @ghg_inventory_category, notice: "Ghg inventory category was successfully updated." }
        format.json { render :show, status: :ok, location: @ghg_inventory_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ghg_inventory_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ghg_inventory_categories/1 or /ghg_inventory_categories/1.json
  def destroy
    @ghg_inventory_category.destroy
    respond_to do |format|
      format.html { redirect_to ghg_inventory_categories_url, notice: "Ghg inventory category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ghg_inventory_category
      @ghg_inventory_category = GhgInventoryCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ghg_inventory_category_params
      params.require(:ghg_inventory_category).permit(:name, :code)
    end
end
