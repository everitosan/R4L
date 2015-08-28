class User < ActiveRecord::Base
  has_many :posts
  has_many :statistics

  validates :name,
            presence: true
  validates :age,
            presence: true,
            numericality: true,
            exclusion: {in: 0...18, message: "la edad mínima es 18 años" }
  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :address,
            presence: true
  validates :zipCode,
            presence: true,
            numericality: true
  validates :country,
            presence: true
  validates :telephone,
            presence: true

end
