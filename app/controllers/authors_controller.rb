class AuthorsController < ApplicationController
	def new
	end
	
	def create
		@author = Author.new(authorParams)
		
		@author.save
		redirect_to @author
	end
	
	private
		def authorParams
			params.require(:author).permit(:firstName, :lastName, :homepage);
		end
end
