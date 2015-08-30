class GoalCategory < ActiveRecord::Base

  has_many :statistics
  has_many :goals

  validates :name,
            uniqueness: true,
            presence: true
end
