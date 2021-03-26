class AddressTypesController < ApplicationController
  before_action :set_address_type, only: %i[ show edit update destroy ]

  # GET /address_types or /address_types.json
  def index
    @address_types = AddressType.all
  end

  # GET /address_types/1 or /address_types/1.json
  def show
  end

  # GET /address_types/new
  def new
    @address_type = AddressType.new
  end

  # GET /address_types/1/edit
  def edit
  end

  # POST /address_types or /address_types.json
  def create
    @address_type = AddressType.new(address_type_params)

    respond_to do |format|
      if @address_type.save
        format.html { redirect_to address_types_path, notice: "Address type was successfully created." }
        format.json { render :show, status: :created, location: @address_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @address_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_types/1 or /address_types/1.json
  def update
    respond_to do |format|
      if @address_type.update(address_type_params)
        format.html { redirect_to @address_type, notice: "Address type was successfully updated." }
        format.json { render :show, status: :ok, location: @address_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @address_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_types/1 or /address_types/1.json
  def destroy
    @address_type.destroy
    respond_to do |format|
      format.html { redirect_to address_types_url, notice: "Address type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_type
      @address_type = AddressType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_type_params
      params.require(:address_type).permit(:name, :code)
    end
end
