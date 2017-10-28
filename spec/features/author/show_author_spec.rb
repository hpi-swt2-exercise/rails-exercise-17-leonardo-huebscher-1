require 'rails_helper'

describe "New author page", type: :feature do

	it "should render the authors page for Alan Turing" do
		visit author_path(@alan)
	end

end