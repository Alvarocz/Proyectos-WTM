class Post < ActiveRecord::Base
  belongs_to :user

  before_create :set_user_id

  def set_user_id
  	self.user_id = current_user.id
  end
end
