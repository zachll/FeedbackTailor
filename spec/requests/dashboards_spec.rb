require 'spec_helper'

describe "Dashboards" do

  describe "Individual page" do
    it "should have the content 'your most relevant individual performance feedback'" do
	visit '/dashboard/individual'      
        expect(page).to have_content('your most relevant individual performance feedback')
    end

    it "should have the title 'Individual'" do
	visit '/dashboard/individual'
	expect(page).to have_title("FeedbackTailor | Individual performance feedback")
    end
  end
 
  describe "Clinic page" do
    it "should have the content 'your most relevant clinic performance feedback'" do
	visit '/dashboard/clinic'      
        expect(page).to have_content('your most relevant clinic performance feedback')
    end

    it "should have the title 'Clinic-level feedback'" do
	visit '/dashboard/clinic'
	expect(page).to have_title("FeedbackTailor | Clinic-level feedback")
    end
  end

end
