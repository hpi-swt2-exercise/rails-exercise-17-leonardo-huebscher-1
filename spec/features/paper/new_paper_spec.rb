require 'rails_helper'

describe "New paper page", type: :feature do
  
	it "should render withour error" do
		visit new_paper_path
	end
	
	it "should have text input for title, venue and year" do
		visit new_paper_path
	
		expect(page).to have_field('Title')
		expect(page).to have_field('Venue')
		expect(page).to have_field('Year')
	end
	
	it "should save the paper, when the form got submitted" do
		visit new_paper_path
		
		fill_in 'Title', with: 'COMPUTING MACHINERY AND INTELLIGENCE'
		fill_in 'Venue', with: 'Mind 49: 433-460'
		fill_in 'Year', with: 1950
		click_button 'Save Paper'
		
		expect(Paper.where(
			title: 'COMPUTING MACHINERY AND INTELLIGENCE',
			venue: 'Mind 49: 433-460',
			year: 1950
		)).to exist
	end

end