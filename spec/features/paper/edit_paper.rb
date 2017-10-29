require 'rails_helper'

describe 'Edit paper page', type: :feature do

	it 'should render the edit author page' do
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
	end

end