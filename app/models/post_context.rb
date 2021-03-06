class PostContext < ActiveRecord::Base
  has_many :posts
  
  validates :name,
            uniqueness: true,
            presence: true
end
