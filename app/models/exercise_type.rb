class ExerciseType < ActiveRecord::Base
  has_many :exercises

  def self.all_names
    self.all.map{ |type| [type.name, type.id] }
  end
end
