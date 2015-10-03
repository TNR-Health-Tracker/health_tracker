class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  # GET /exercises
  # GET /exercises.json
  def index
    @exercises = Exercise.all
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
  end

  # GET /exercises/new
  def new
    @exercise = Exercise.new
    @options = ExerciseType.all_names
  end

  # GET /exercises/1/edit
  def edit
    @options = ExerciseType.all_names
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @exercise = Exercise.new(exercise_params)
      if @exercise.save
        redirect_to @exercise, notice: 'Exercise was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
      if @exercise.update(exercise_params)
        redirect_to @exercise, notice: 'Exercise was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @exercise.destroy
      redirect_to exercises_url, notice: 'Exercise was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:exercise, :calories_burned, :entry_date, :exercise_type_id)
    end
end
