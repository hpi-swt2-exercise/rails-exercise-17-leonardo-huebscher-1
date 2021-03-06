class PapersController < ApplicationController
	def index
		@papers = Paper.all
		@papers = Paper.filterYear(params[:year]) unless params[:year].blank?
	end
	
	def show
		@paper = Paper.find(params[:id])
	end
	
	def new
		@paper = Paper.new
	end
	
	def edit
		@paper = Paper.find(params[:id])
	end
	
	def create
		@paper = Paper.new(paperParams)
		
		if @paper.save
			redirect_to @paper
		else
			render 'new'
		end
	end
	
	def update
		@paper = Paper.find(params[:id])

		if @paper.update(paperParams)
			redirect_to @paper
		else
			render 'edit'
		end
	end
	
	def destroy
		@paper = Paper.find(params[:id])
		@paper.destroy

		redirect_to papers_path
	end
	
	private
		def paperParams
			#params.require(:paper).permit(:title, :venue, :year, :author_id);
			#params.require(:paper).permit!
			params.require(:paper).permit(:title, :venue, :year, { author_ids: [] })
		end
end
