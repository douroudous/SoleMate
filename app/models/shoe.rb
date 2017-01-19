class Shoe < ApplicationRecord
  belongs_to :user

  validates :model, presence: true
  validates :version, presence: true
  validates :brand, presence: true
  validates :picture, presence: true
  validates :year, presence: true, length: { is: 4 }, numericality: { only_integer: true }
  validates :price, presence: true
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :user, presence: true
end


# validates :picture, inclusion: { in: %w(http),
# message: "%{value} is not a valid link.  Please include an http link." }
