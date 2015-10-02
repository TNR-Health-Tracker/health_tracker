class HealthTracker < ActiveRecord::Base

  def self.total_steps
    @total_steps = self.count
  end
end
