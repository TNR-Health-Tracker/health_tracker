class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
    @weights = Weight.all
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
  end

  # GET /weights/new
  def new
    @weight = Weight.new
  end

  # GET /weights/1/edit
  def edit
  end

  # POST /weights
  # POST /weights.json
  def create
    @weight = Weight.new(weight_params)
      if @weight.save
        redirect_to @weight, notice: 'Weight was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /weights/1
  # PATCH/PUT /weights/1.json
  def update
      if @weight.update(weight_params)
        redirect_to @weight, notice: 'Weight was successfully updated.' 
      else
        render :edit
      end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @weight.destroy
      redirect_to weights_url, notice: 'Weight was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight
      @weight = Weight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_params
      params.require(:weight).permit(:pounds, :entry_date)
    end
end
