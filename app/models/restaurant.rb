class Restaurant < ApplicationRecord
  # validates
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }

  # associations
  has_many :reviews, dependent: :destroy


end
