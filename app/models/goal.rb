class Goal < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal_category

  validates :user,
            presence: true
  validates :goal_category,
            presence: true
  validates :start,
            presence: true,
            numericality: true
  validates :current,
            presence: true,
            numericality: true
  validates :desire,
            presence: true,
            numericality: true
end
