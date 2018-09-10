class Stylist < ApplicationRecord
  has_many :services
  validates :name, presence: true
  
  accepts_nested_attributes_for :services, reject_if: proc { |attributes| attribute[:title].blank? }, allow_destroy: true


end
