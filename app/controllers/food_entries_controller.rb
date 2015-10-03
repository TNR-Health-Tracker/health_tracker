class FoodEntriesController < ApplicationController
  before_action :set_food_entry, only: [:show, :edit, :update, :destroy]

  # GET /food_entries
  def index
    @food_entries = FoodEntry.all
  end

  # GET /food_entries/1
  def show
  end

  # GET /food_entries/new
  def new
    @food_entry = FoodEntry.new
  end

  # GET /food_entries/1/edit
  def edit
  end

  # POST /food_entries
  def create
    @food_entry = FoodEntry.new(food_entry_params)

    if @food_entry.save
      redirect_to @food_entry, notice: 'Food entry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /food_entries/1
  def update
    if @food_entry.update(food_entry_params)
      redirect_to @food_entry, notice: 'Food entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /food_entries/1
  def destroy
    @food_entry.destroy
    redirect_to food_entries_url, notice: 'Food entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_entry
      @food_entry = FoodEntry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_entry_params
      params.require(:food_entry).permit(:name, :calories, :entry_date)
    end
end
