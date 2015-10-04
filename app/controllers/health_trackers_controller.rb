class HealthTrackersController < ApplicationController

  def dashboard
    @steps = Step.steps_today
    @distance = (@steps*2.5/5280).round(2)
    @calories_burned = Exercise.burned_today
    @first_weight = Weight.initial_weight
    @current_weight = Weight.current_weight
  end
end
