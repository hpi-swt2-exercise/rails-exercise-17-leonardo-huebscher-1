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
		@paper = FactoryGirl.create :paper
		visit new_paper_path
		
		fill_in 'Title', with: @paper.title
		fill_in 'Venue', with: @paper.venue
		fill_in 'Year', with: @paper.year
		click_button 'Save Paper'
		
		expect(Paper.where(
			title: @paper.title,
			venue: @paper.venue,
			year: @paper.year
		)).to exist
	end

end