require 'rails_helper'

describe 'Index author page', type: :feature do
  
	it 'should render' do
		visit authors_path
	end
	
	it 'should contain add paper link' do
		visit papers_path
		
		expect(page).to have_link('Add paper', :href=>new_paper_path)
	end
end