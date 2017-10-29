require 'rails_helper'

describe 'Edit author page', type: :feature do

	it 'should render the edit author page' do
		@alan = FactoryGirl.create :author
		visit edit_author_path(@alan)
	end
	
	it 'should save changes made to the author' do
		@alan = FactoryGirl.create :author
		visit edit_author_path(@alan)
		
		fill_in 'First name', with: 'Alan Mathison'
		click_button 'Save Author'
		
		expect(page).to have_content('Alan Mathison')
	end

end