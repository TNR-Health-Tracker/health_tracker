class Weight < ActiveRecord::Base
  validates :entry_date, uniqueness: true

end
