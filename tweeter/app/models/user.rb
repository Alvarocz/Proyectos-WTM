class User < ActiveRecord::Base
	has_many :tweets

  validates :terms_of_service, acceptance: true
end