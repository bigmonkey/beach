require 'spec_helper'

describe "rehab page" do
	subject { page }

  shared_examples_for "all services rehab pages" do
  	# payday app menu is not showing
		#it { should have_css('title', :text => "Payday Loans") }
    it { should have_title 'Beachside Rehab' }   
  end

  describe "Rehab Landing Page" do
    
    before { 
      visit("/services/rehab") 
      # puts page.bodyrm -rf 
      # binding.pry
    }
    it_should_behave_like "all services rehab pages"
  end

end