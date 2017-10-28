require 'rails_helper'

describe 'Index author page', type: :feature do
  
	it 'should render' do
		visit index_author_path
	end
	
	it 'should show each authors name and homepage' do
		@alan = FactoryGirl.create :author
		visit index_author_path
		
		expect(page).to have_content(@alan.first_name)
		expect(page).to have_content(@alan.last_name)
	end
	
	it 'should contain add Author link' do
		visit index_author_path
		
		expect(page).to have_link('Add author', :href=>new_author_path)
	end
	
	it 'should contain a link to each authors details page' do
		@alan = FactoryGirl.create :author
		visit index_author_path
		
		expect(page).to have_link('Show', :href=>author_path(@alan))
	end
	
end