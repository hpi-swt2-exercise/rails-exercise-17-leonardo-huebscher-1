require 'rails_helper'

describe "Show authors details", type: :feature do

	it "should render the authors page for Alan Turing" do
		@alan = FactoryGirl.create :author
		visit author_path(@alan)
	end

end