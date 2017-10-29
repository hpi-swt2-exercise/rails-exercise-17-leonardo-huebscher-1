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
	
	it "should fail creation if no year is given" do
		paper = Paper.new(
			title: 'This is a paper', 
			venue: 'Proceedings of some conference', 
			year: nil)
			
		expect(paper).to be_invalid
	end
	
	it "should fail creation if no year is not given as integer" do
		paper = Paper.new(
			title: 'This is a paper', 
			venue: 'Proceedings of some conference', 
			year: 'nineteen-fifty')
			
		expect(paper).to be_invalid
	end
	
	it "paper should have an empty list of authors by default" do
      paper = Paper.new(
			title: 'This is a paper', 
			venue: 'Proceedings of some conference', 
			year: 'nineteen-fifty')

      expect(paper.authors).to be_empty
	end
  
end
