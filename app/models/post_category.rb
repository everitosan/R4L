class PostCategory < ActiveRecord::Base
  has_many :posts
  has_many :events

  validates :name,
            uniqueness: true,
            presence: true
end
