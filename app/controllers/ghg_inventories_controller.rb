class GhgInventoriesController < ApplicationController
  before_action :set_ghg_inventory, only: %i[ show edit update destroy ]

  # GET /ghg_inventories or /ghg_inventories.json
  def index
    @ghg_inventories = GhgInventory.all
  end

  # GET /ghg_inventories/1 or /ghg_inventories/1.json
  def show
  end

  # GET /ghg_inventories/new
  def new
    @ghg_inventory = GhgInventory.new
  end

  # GET /ghg_inventories/1/edit
  def edit
  end

  # POST /ghg_inventories or /ghg_inventories.json
  def create
    @ghg_inventory = GhgInventory.new(ghg_inventory_params)

    respond_to do |format|
      if @ghg_inventory.save
        format.html { redirect_to ghg_inventories_path, notice: "Ghg inventory was successfully created." }
        format.json { render :show, status: :created, location: @ghg_inventory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ghg_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ghg_inventories/1 or /ghg_inventories/1.json
  def update
    respond_to do |format|
      if @ghg_inventory.update(ghg_inventory_params)
        format.html { redirect_to @ghg_inventory, notice: "Ghg inventory was successfully updated." }
        format.json { render :show, status: :ok, location: @ghg_inventory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ghg_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ghg_inventories/1 or /ghg_inventories/1.json
  def destroy
    @ghg_inventory.destroy
    respond_to do |format|
      format.html { redirect_to ghg_inventories_url, notice: "Ghg inventory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ghg_inventory
      @ghg_inventory = GhgInventory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ghg_inventory_params
      params.require(:ghg_inventory).permit(:name)
    end
end
