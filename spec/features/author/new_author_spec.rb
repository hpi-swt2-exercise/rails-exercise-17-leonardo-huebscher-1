require 'rails_helper'

describe "New author page", type: :feature do
  
	it "should render withour error" do
		visit new_author_path
	end
	
	it "should have text input for first name, last name, and homepage" do
		visit new_author_path
	
		expect(page).to have_field('First name')
		expect(page).to have_field('Last name')
		expect(page).to have_field('Homepage')
	end
	
	it "should have a button to submit the form" do
		visit new_author_path
		
		expect(page).to have_css('input[type="submit"]')
	end
	
	it "should report that last name can´t be blank" do
		visit new_author_path
		fill_in 'First name', with: 'Alan'
		fill_in 'Homepage', with: 'http://wikipedia.de/Alan_Turing'
		click_button 'Save Author'
		
		expect(page).to have_content("last name can't be blank")
	end
end