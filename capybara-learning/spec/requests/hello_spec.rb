# coding: utf-8
require 'spec_helper'

describe "Hello" do
  describe "GET /world", :type => :acceptance, :js => true do
    it "itemsにhelloが表示されること" do
      visit "/hello/world"
      page.should have_content("Hello")
      page.should have_selector("ul#items li")
    end

    it "items2に01234が表示されること" do
      pending
      visit "/hello/world"
      page.should have_selector("ul#items2 li")
    end
  end
end
