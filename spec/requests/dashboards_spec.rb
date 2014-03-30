require 'spec_helper'

describe "Dashboards" do

  describe "Home page" do
    it "should have the content 'your most relevant feedback'" do
	visit '/dashboard/home'      
        expect(page).to have_content('your most relevant feedback')
    end

    it "should have the title the base title" do
	visit '/dashboard/home'
	expect(page).to have_title("FeedbackTailor")
    end

    it "should not have the custom title" do
	visit '/dashboard/home'
	expect(page).not_to have_title("| Home")
    end
  end

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

  describe "About page" do
    it "should have the content 'FeedbackTailor is an automated tailoring system for clinical performance feedback'" do
	visit '/dashboard/about'      
        expect(page).to have_content('FeedbackTailor is an automated tailoring system for clinical performance feedback')
    end

    it "should have the title 'About'" do
	visit '/dashboard/about'
	expect(page).to have_title("FeedbackTailor | About")
    end
  end

end
