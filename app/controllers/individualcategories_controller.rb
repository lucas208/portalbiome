class IndividualcategoriesController < ApplicationController
  before_action :set_individualcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /individualcategories
  # GET /individualcategories.json
  def index
    @individualcategories = Individualcategory.all.order(:name)
  end

  # GET /individualcategories/1
  # GET /individualcategories/1.json
  def show
  end

  # GET /individualcategories/new
  def new
    @individualcategory = Individualcategory.new
    authorize Individualcategory
  end

  # GET /individualcategories/1/edit
  def edit
    authorize Individualcategory
  end

  # POST /individualcategories
  # POST /individualcategories.json
  def create
    @individualcategory = Individualcategory.new(individualcategory_params)

    respond_to do |format|
      if @individualcategory.save
        format.html { redirect_to @individualcategory, notice: 'Individualcategory was successfully created.' }
        format.json { render :show, status: :created, location: @individualcategory }
      else
        format.html { render :new }
        format.json { render json: @individualcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /individualcategories/1
  # PATCH/PUT /individualcategories/1.json
  def update
    respond_to do |format|
      if @individualcategory.update(individualcategory_params)
        format.html { redirect_to @individualcategory, notice: 'Individualcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @individualcategory }
      else
        format.html { render :edit }
        format.json { render json: @individualcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individualcategories/1
  # DELETE /individualcategories/1.json
  def destroy
    @individualcategory.destroy
    respond_to do |format|
      format.html { redirect_to individualcategories_url, notice: 'Individualcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_individualcategory
      @individualcategory = Individualcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def individualcategory_params
      params.require(:individualcategory).permit(:name)
    end
end
