class TutorialTypesController < ApplicationController
  before_action :set_tutorial_type, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_types
  # GET /tutorial_types.json
  def index
    @tutorial_types = TutorialType.all
  end

  # GET /tutorial_types/1
  # GET /tutorial_types/1.json
  def show
  end

  # GET /tutorial_types/new
  def new
    @tutorial_type = TutorialType.new
  end

  # GET /tutorial_types/1/edit
  def edit
  end

  # POST /tutorial_types
  # POST /tutorial_types.json
  def create
    @tutorial_type = TutorialType.new(tutorial_type_params)

    respond_to do |format|
      if @tutorial_type.save
        format.html { redirect_to @tutorial_type, notice: 'Tutorial type was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_type }
      else
        format.html { render :new }
        format.json { render json: @tutorial_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_types/1
  # PATCH/PUT /tutorial_types/1.json
  def update
    respond_to do |format|
      if @tutorial_type.update(tutorial_type_params)
        format.html { redirect_to @tutorial_type, notice: 'Tutorial type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_type }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_types/1
  # DELETE /tutorial_types/1.json
  def destroy
    @tutorial_type.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_types_url, notice: 'Tutorial type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_type
      @tutorial_type = TutorialType.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_type_params
      params.require(:tutorial_type).permit(:title, :title_url)
    end
end
