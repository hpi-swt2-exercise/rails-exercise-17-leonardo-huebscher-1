class AuthorsController < ApplicationController
	def index
	end
	
	def show
		@author = Author.find(params[:id])
	end
	
	def new
	end
	
	def create
		@author = Author.new(authorParams)
		
		@author.save
		redirect_to @author
	end
	
	private
		def authorParams
			params.require(:author).permit(:first_name, :last_name, :homepage);
		end
end
