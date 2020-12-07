class MealDaysController < ApplicationController
  before_action :set_meal_day, only: [:show, :update, :destroy]

  # GET /meal_days
  def index
    @meal_days = MealDay.all

    render json: @meal_days
  end

  # GET /meal_days/1
  def show
    render json: @meal_day
  end

  # POST /meal_days
  def create
    @meal_day = MealDay.new(meal_day_params)

    if @meal_day.save
      render json: @meal_day, status: :created, location: @meal_day
    else
      render json: @meal_day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meal_days/1
  def update
    if @meal_day.update(meal_day_params)
      render json: @meal_day
    else
      render json: @meal_day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meal_days/1
  def destroy
    @meal_day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_day
      @meal_day = MealDay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meal_day_params
      params.require(:meal_day).permit(:meal_id, :day_id)
    end
end
