require 'rails_helper'

describe 'Show authors details', type: :feature do

	it 'should render the paper page' do
		@paper = FactoryGirl.create :paper
		visit paper_path(@paper)
	end

	it 'should show information about the authors of the paper' do
		@author = FactoryGirl.create :author
		@paper = FactoryGirl.create :paper
		visit paper_path(@paper)
		
		expect(page).to have_content(@author.name)
	end

end