class Post < ApplicationRecord
  mount_uploader :image, PhotoUploader

  def reading_time
    (text.split(' ').size / 150.to_f).ceil
  end
end
