require 'spec_helper'

describe "Custom Landing Pages" do
	subject { page }


  describe "landing page" do
    
    ["rehab", "detox", "dual diagnosis"].each do |kw|
      context "kw group is #{kw}" do
        before { 
          visit("/services/#{kw.gsub(' ','-')}/a")    

          #puts page.body
          #binding.pry
        }
        it { should have_title "#{kw.titleize} Programs | Beachside Rehab" }   
        it { should have_css("meta[name='description'][content='Beachside Rehab provides personalized #{kw} treatment at its world-class center on a Florida beach.']", visible: false) }      
      end
    end

    context "not a kw" do
      before { 
        visit("/services/hippo/a")  
      }
      # a word not listed in kw_groups should default to rehab 
      it { should have_title 'Rehab Programs | Beachside Rehab' }   
      it { should have_css("meta[name='description'][content='Beachside Rehab provides personalized rehab treatment at its world-class center on a Florida beach.']", visible: false) }      
    end


  end

end