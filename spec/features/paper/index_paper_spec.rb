require 'rails_helper'

describe 'Index author page', type: :feature do
  
	it 'should render' do
		visit authors_path
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
end