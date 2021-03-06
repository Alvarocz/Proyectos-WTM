class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover_image, CoverImageUploader
end