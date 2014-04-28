require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Jason Corum" }
  
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Jason Corum') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Resume page" do
    before { visit resume_path }

    it { should have_content('Resume') }
    it { should have_title(full_title('Resume')) }

  end

  describe "About page" do

    before { visit about_path }
    it { should have_content('About')}
    it {should have_title(full_title('About')) }

  end

    describe "Contact page" do

    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
    
  end
end
