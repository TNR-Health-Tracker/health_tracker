class StepstakenController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = steps.all
  end

  def show
  end

  # GET /stepstaken/new
  def new
    @step = Stepstaken.new
  end

  # GET /Stepstaken/1/edit
  def edit
  end

  # POST /calories
  # POST /calories.json
  def create
    @step = Stepstaken.new(step_params)
  end

  respond_to do |format|
    if @step.save
      format.html { redirect_to @step, notice: 'Step was successfully created.' }
      format.json { render :show, status: :created, location: @step }
    else
      format.html { render :new }
      format.json { render json: @step.errors, status: :unprocessable_entity }
    end
  end
end


def update
  respond_to do |format|
    if @step.update(step_params)
      format.html { redirect_to @step, notice: 'Step was successfully updated.' }
      format.json { render :show, status: :ok, location: @step }
    else
      format.html { render :edit }
      format.json { render json: @step.errors, status: :unprocessable_entity }
    end
  end
end


def destroy
  @step.destroy
  respond_to do |format|
    format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
    format.json { head :no_content }
  end
end


private
  # Use callbacks to share common setup or constraints between actions.
  def set_step
    @step = Stepstaken.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def step_params
    params.require(:step).permit(:taken, :entry_date)
  end
end
