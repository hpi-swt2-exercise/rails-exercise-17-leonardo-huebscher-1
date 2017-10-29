class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end
	
	def show
		@author = Author.find(params[:id])
	end
	
	def new
		@author = Author.new
	end
	
	def edit
		@author = Author.find(params[:id])
	end
	
	def create
		@author = Author.new(authorParams)
		
		if @author.save
			redirect_to @author
		else
			render 'new'
		end
	end
	
	def update
		@author = Author.find(params[:id])

		if @author.update(authorParams)
			redirect_to @author
		else
			render 'edit'
		end
	end
	
	private
		def authorParams
			params.require(:author).permit(:first_name, :last_name, :homepage);
		end
end
