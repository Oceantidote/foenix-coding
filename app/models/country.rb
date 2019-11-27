class Country < ApplicationRecord
  has_one_attached :photo
  has_many :jobs
end
