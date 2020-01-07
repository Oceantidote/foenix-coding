class Post < ApplicationRecord
  mount_uploader :image, PhotoUploader
  after_save :update_featured

  def reading_time
    (text.split(' ').size / 150.to_f).ceil
  end

  def update_featured
    if self.featured == true
      @posts = Post.where(featured: true).where.not(id: self.id)
      @posts.update_all(featured: false)
    end
  end
end
