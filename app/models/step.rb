class Step < ActiveRecord::Base

  validates :taken, :entry_date, presence: true

  def self.total
    self.count
  end
end
