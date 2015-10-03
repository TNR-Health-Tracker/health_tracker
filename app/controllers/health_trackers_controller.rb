class HealthTrackersController < ApplicationController

  def dashboard
    @steps = Step.steps_today
    @distance = (@steps*2.5/5280).round(2)
  end
end
