require 'spec_helper'

describe PagesController do
  render_views # ビューが必ずレンダーされるよう、この行を追加
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    # 以下を追加
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
            :content => "Rails3 Tutorial | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
        :content => "Rails3 Tutorial | Contact")
    end
  end
  
  # 以下の describe ブロックを追加
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
        :content => "Rails3 Tutorial | About")
    end
  end
  
end