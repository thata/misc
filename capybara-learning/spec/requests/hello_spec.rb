# coding: utf-8
require 'spec_helper'

describe "Hello" do
  describe "GET /world", :type => :acceptance, :js => true do
    it "itemsにliがひとつ以上あること" do
      visit "/hello/world"
      page.should have_content("Hello")
      page.should have_selector("ul#items li")
    end

    it "items2にliがひとつ以上あること" do
      visit "/hello/world"
      page.should have_selector("ul#items2 li")
    end
  end
end
