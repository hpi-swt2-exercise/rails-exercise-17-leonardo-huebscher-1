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
end