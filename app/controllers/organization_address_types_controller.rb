class OrganizationAddressTypesController < ApplicationController
  before_action :set_organization_address_type, only: %i[ show edit update destroy ]

  # GET /organization_address_types or /organization_address_types.json
  def index
    @organization_address_types = OrganizationAddressType.all
  end

  # GET /organization_address_types/1 or /organization_address_types/1.json
  def show
  end

  # GET /organization_address_types/new
  def new
    @organization_address_type = OrganizationAddressType.new
  end

  # GET /organization_address_types/1/edit
  def edit
  end

  # POST /organization_address_types or /organization_address_types.json
  def create
    @organization_address_type = OrganizationAddressType.new(organization_address_type_params)

    respond_to do |format|
      if @organization_address_type.save
        format.html { redirect_to @organization_address_type, notice: "Organization address type was successfully created." }
        format.json { render :show, status: :created, location: @organization_address_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization_address_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_address_types/1 or /organization_address_types/1.json
  def update
    respond_to do |format|
      if @organization_address_type.update(organization_address_type_params)
        format.html { redirect_to @organization_address_type, notice: "Organization address type was successfully updated." }
        format.json { render :show, status: :ok, location: @organization_address_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization_address_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_address_types/1 or /organization_address_types/1.json
  def destroy
    @organization_address_type.destroy
    respond_to do |format|
      format.html { redirect_to organization_address_types_url, notice: "Organization address type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_address_type
      @organization_address_type = OrganizationAddressType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_address_type_params
      params.require(:organization_address_type).permit(:name, :code)
    end
end
