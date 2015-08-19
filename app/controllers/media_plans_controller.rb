class MediaPlansController < ApplicationController
  before_action :set_media_plan, only: [:show, :edit, :update, :destroy]

  # GET /media_plans
  # GET /media_plans.json
  def index
    @media_plans = MediaPlan.all
  end

  # GET /media_plans/1
  # GET /media_plans/1.json
  def show
  end

  # GET /media_plans/new
  def new
    @media_plan = MediaPlan.new
  end

  # GET /media_plans/1/edit
  def edit
  end

  # POST /media_plans
  # POST /media_plans.json
  def create
    @media_plan = MediaPlan.new(media_plan_params)

    respond_to do |format|
      if @media_plan.save
        format.html { redirect_to @media_plan, notice: 'Media plan was successfully created.' }
        format.json { render :show, status: :created, location: @media_plan }
      else
        format.html { render :new }
        format.json { render json: @media_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_plans/1
  # PATCH/PUT /media_plans/1.json
  def update
    respond_to do |format|
      if @media_plan.update(media_plan_params)
        format.html { redirect_to @media_plan, notice: 'Media plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_plan }
      else
        format.html { render :edit }
        format.json { render json: @media_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_plans/1
  # DELETE /media_plans/1.json
  def destroy
    @media_plan.destroy
    respond_to do |format|
      format.html { redirect_to media_plans_url, notice: 'Media plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_plan
      @media_plan = MediaPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_plan_params
      params.require(:media_plan).permit(:objective, :title)
    end
end
