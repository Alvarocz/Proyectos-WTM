class HomeController < ApplicationController
	def index
		@posts = Post.all
		flash[:notice] = "User succesfully created."
	end
end
