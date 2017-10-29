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
	
	it 'should have a select box for the first author' do
		@author = FactoryGirl.create :author
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
		
		expect(page).to have_select('paper_author_id_1')
	end
	
	it 'should have a select box for the second author' do
		@author = FactoryGirl.create :author
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
		
		expect(page).to have_select('paper_author_id_2')
	end
	
	it 'should be pre-selected with first author' do
		@author = FactoryGirl.create :author
		@paper = FactoryGirl.create :paper
		visit edit_paper_path(@paper)
		
		expect(page).to have_select('paper_author_id_1', selected: @author.name)
	end

end