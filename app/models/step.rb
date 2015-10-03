class Step < ActiveRecord::Base

  validates :taken, :entry_date, presence: true

  def self.total
    self.count
  end

  def self.steps_today
    steps_today = self.where("entry_date = ?", Date.today.strftime('%Y-%m-%d'))
    steps_today.empty? ? 0 : steps_today.sum('taken')
  end




end
