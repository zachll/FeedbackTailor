require 'spec_helper'

describe "Dashboards" do

  subject { page }

  describe "Individual page" do
    before { visit individual_path }

    it { should have_content('individual performance feedback')}
    it { should have_title('FeedbackTailor | Individual performance feedback')}
  end

  describe "Clinic page" do
    before { visit clinic_path }

    it { should have_content('clinic performance feedback')}
    it { should have_title('FeedbackTailor | Clinic-level feedback')}
  end

end
