class User < ActiveRecord::Base
  has_many :posts

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover_image, CoverImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
