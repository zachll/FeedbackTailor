require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "registration page" do
    before { visit register_path }

    it { should have_content('Register') }
    it { should have_title('FeedbackTailor | Register') }
  end

end
