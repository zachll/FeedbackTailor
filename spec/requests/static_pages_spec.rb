require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
 
    it { should have_content('FeedbackTailor')}
    it { should have_title('FeedbackTailor')}
    it { should have_content('performance feedback for healthcare providers')}
    it { should_not have_title('| Home')}
  end


  describe "About page" do
    before { visit about_path }
    
    it { should have_content('FeedbackTailor is')}
    it { should have_content('About FeedbackTailor')}
    it { should have_title('FeedbackTailor | About')}
  end

  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('Help')}
    it { should have_title('FeedbackTailor | Help')}
  end

end
