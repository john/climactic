class BoundariesController < ApplicationController
  before_action :set_boundary, only: %i[ show edit update destroy ]

  # GET /boundaries or /boundaries.json
  def index
    @boundaries = Boundary.all
  end

  # GET /boundaries/1 or /boundaries/1.json
  def show
  end

  # GET /boundaries/new
  def new
    @boundary = Boundary.new
    @organizations = Organization.all
  end

  # GET /boundaries/1/edit
  def edit
  end

  # POST /boundaries or /boundaries.json
  def create
    @boundary = Boundary.new(boundary_params)

    respond_to do |format|
      if @boundary.save
        format.html { redirect_to boundaries_path, notice: "Boundary was successfully created." }
        format.json { render :show, status: :created, location: @boundary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boundary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boundaries/1 or /boundaries/1.json
  def update
    respond_to do |format|
      if @boundary.update(boundary_params)
        format.html { redirect_to @boundary, notice: "Boundary was successfully updated." }
        format.json { render :show, status: :ok, location: @boundary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boundary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boundaries/1 or /boundaries/1.json
  def destroy
    @boundary.destroy
    respond_to do |format|
      format.html { redirect_to boundaries_url, notice: "Boundary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boundary
      @boundary = Boundary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boundary_params
      params.require(:boundary).permit(:name, :organization_id)
    end
end
