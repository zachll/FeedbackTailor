require 'spec_helper'

describe "FeedbackReports" do

  subject { page }

  describe "report generator page" do
    before { visit generator_path }

    it { should have_content('Report generator')}
    it { should have_title('FeedbackTailor | Report generator')}
 
  end

end
