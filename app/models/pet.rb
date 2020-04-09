class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
