class Event < ApplicationRecord

  acts_as_paranoid
  
  belongs_to :user

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :venue, presence: true
  validates :receiver, presence: true
  validates :address, presence: true
  validates :phone, numericality: true

  # relation
  has_one_attached :avatar
  has_many :event_products, dependent: :destroy
  has_many :products, through: :event_products
end
