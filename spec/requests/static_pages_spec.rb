require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'FeedbackTailor'" do
      visit '/static_pages/home'
      expect(page).to have_content('FeedbackTailor')
    end

    it "should have the content 'your most relevant'" do
        visit '/static_pages/home'
        expect(page).to have_content('your most relevant')
    end

    it "should have the title the base title" do
        visit '/static_pages/home'
        expect(page).to have_title("FeedbackTailor")
    end

    it "should not have the custom title" do
        visit '/static_pages/home'
        expect(page).not_to have_title("| Home")
    end
  end






  describe "About page" do
    it "should have the content 'About FeedbackTailor'" do
      visit '/static_pages/about'
      expect(page).to have_content('About FeedbackTailor')
    end

    it "should have the content 'FeedbackTailor is'" do
      visit '/static_pages/about'
        expect(page).to have_content('FeedbackTailor is')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
        expect(page).to have_title("FeedbackTailor | About")
    end




  end



  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
end
