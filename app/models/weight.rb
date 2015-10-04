class Weight < ActiveRecord::Base
  validates :entry_date, uniqueness: true, on: :create

  def self.initial_weight
    first_entry = self.order("entry_date").first
    first_entry.nil? ? 0 : first_entry.pounds
  end

  def self.current_weight
    latest_entry = self.order("entry_date").last
    latest_entry.nil? ? 0 : latest_entry.pounds
  end
end
