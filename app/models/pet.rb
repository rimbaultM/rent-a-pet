class Pet < ApplicationRecord
  validates :photo , presence: true
  validates :name , presence: true
  validates :price_per_day , presence: true


  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
