require 'rails_helper'

RSpec.describe Paper, type: :model do
  
	it "should fail creation if no title is given" do
		paper = Paper.new(
			title: nil, 
			venue: 'Proceedings of some conference', 
			year: 2009)
			
		expect(paper).to be_invalid
	end
	
	it "should fail creation if no venue is given" do
		paper = Paper.new(
			title: 'This is a paper', 
			venue: nil, 
			year: 2009)
			
		expect(paper).to be_invalid
	end
  
end
