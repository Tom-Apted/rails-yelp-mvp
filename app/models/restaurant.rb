class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @allowed_types = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :category, :inclusion=> { :in => @allowed_types }
end
