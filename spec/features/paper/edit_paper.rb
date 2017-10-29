require 'rails_helper'

describe 'Edit paper page', type: :feature do

	it 'should render the edit paper page' do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
	end
	
	it 'should save changes made to the paper' do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
		
		fill_in 'Title', with: 'Best Paper EVER'
		click_button 'Save Paper'
		
		expect(page).to have_content('Best Paper EVER')
	end

end