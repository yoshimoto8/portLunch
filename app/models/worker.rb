class Worker < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :worker_images, ImageUploader
  has_many :career
  has_many :portfolio
end
