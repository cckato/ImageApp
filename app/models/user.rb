class User < ActiveRecord::Base
  has_many :movies
  has_many :comments
  mount_uploader :image, ImageUploader
end
