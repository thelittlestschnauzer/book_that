class Stylist < ApplicationRecord
  has_many :services
  validates :name, presence: true
  accepts_nested_attributes_for :services

end
