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

    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render :new
    end
  end


  def update
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_step
    @step = 1
  end
end
