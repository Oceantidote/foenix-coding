class Post < ApplicationRecord
  # has_one_attached :photo
  mount_uploader :image, PhotoUploader
end
