class Weight < ActiveRecord::Base
  validates :entry_date, uniqueness: true, on: :create

end
