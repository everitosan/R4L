class PersonalProject < ActiveRecord::Base
  belongs_to :user

  validates :user,
            presence: true,
            uniqueness: true
  validates :name,
            presence: true
  validates :socialProblem,
            presence: true
  validates :impact,
            presence: true
  validates :description,
            presence: true
end
