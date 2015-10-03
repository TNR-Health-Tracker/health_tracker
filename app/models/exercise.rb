class Exercise < ActiveRecord::Base
  has_many:exercise_types
  has_many:calories


end
