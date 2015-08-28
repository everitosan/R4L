class GoalCategory < ActiveRecord::Base

  has_many :statistics
  validates :name,
            uniqueness: true,
            presence: true
end
