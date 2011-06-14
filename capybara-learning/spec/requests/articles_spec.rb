require 'spec_helper'

describe "Articles" do
  describe "GET /articles", :type => :acceptance, :js => true do
    it "works! (now write some real specs)" do
      visit articles_path
      page.should have_content("New Article")
      # javascriptが呼べている事を確認
      evaluate_script("9 * 9").should == 81
    end
  end
end
