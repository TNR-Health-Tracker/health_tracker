class FoodEntriesController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]



  def index
    @foods = FoodEntry.all
  end

  def show
  end


  def total
    @total = FoodEntry.total
  end

  # GET /stepstaken/new
  def new
    @food = FoodEntry.new
  end

  def edit
  end

  # POST /calories
  # POST /calories.json
  def create
    @food = FoodEntry.new(step_params)

    if @food.save
     redirect_to @food, notice: 'Food Entry was successfully created.'
    else
      render :new
    end
  end

  def update
    if @food.update(step_params)
       redirect_to @food, notice: 'Food Entry was successfully updated.'
    else
       render :edit
    end
  end


  def destroy
    @food.destroy
      redirect_to steps_url, notice: 'Food Entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = FoodEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:food).permit(:name, :calories, :entry_date)
    end

end
