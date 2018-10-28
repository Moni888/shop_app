class Car < ApplicationRecord
mount_uploader :image, ImageUploader
#serialize :image, JSON
belongs_to :user, optional: true

validates :title, :brand, :price, :model, presence: true
validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
validates :title, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed."}
validates :price, numericality: { only_integer: true }, length: { maximum: 8 }

BRAND = %w{ Audi Mercedes Bugatti Chevrolet Ferrari Fiorano/Enzo Lamborghini Bentley Porsche Pagani Saleen }
FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
CONDITION = %w{ New Excellent Mint Used Fair Poor }
end
