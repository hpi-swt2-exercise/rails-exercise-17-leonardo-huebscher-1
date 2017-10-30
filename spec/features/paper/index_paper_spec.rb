require 'rails_helper'

describe 'Index paper page', type: :feature do
  
	it 'should render' do
		visit papers_path
	end
	
	it 'should contain add paper link' do
		visit papers_path
		
		expect(page).to have_link('Add paper', :href=>new_paper_path)
	end
	
	it 'should contain a link to each papers details page' do
		@paper = FactoryGirl.create :paper
		visit papers_path
		
		expect(page).to have_link('Show', :href=>paper_path(@paper))
	end
	
	it 'should contain a link to each papers edit page' do
		@paper = FactoryGirl.create :paper
		visit papers_path
		
		expect(page).to have_link('Edit', :href=>edit_paper_path(@paper))
	end
	
	it 'should contain a link for each paper to delete' do
		@paper = FactoryGirl.create :paper
		visit papers_path
		
		expect(page).to have_link('Destroy')
	end
	
	it 'should use the GET-parameter year to filter the papers and show only thus being published before the given year' do
		@oldPaper = FactoryGirl.create :paper
		@notSoOldPaper = FactoryGirl.create :paper, year: 1968
		visit papers_path + '?year=1950'
		
		expect(page).not_to have_content(@notSoOldPaper.year)
		expect(page).to have_content(@oldPaper.year);
	end
end