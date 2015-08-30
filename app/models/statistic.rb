class Statistic < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal_category

  validates :user,
            presence: true
  validates :goal_category,
            presence: true
  validates :quantity,
            presence: true,
            numericality: true
end
