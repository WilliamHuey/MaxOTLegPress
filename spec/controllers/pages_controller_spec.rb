require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'results'" do
    it "returns http success" do
      post 'results'
      response.should be_success
    end

    it "display weight 570 and its 4 incremental weights" do
      post 'results', :weight => 570
      assigns(:weight).should == 570

      # 570 / 4 == 142.5 but we want to floor to a num divisable by 10
      assigns(:weight1).should == 140

      # 142.5 * 2 floor to a divisable 10
      assigns(:weight2).should == 280

      # 142.5 * 3 floor to a divisable 10
      assigns(:weight3).should == 420

      assigns(:weight4).should == 570
    end

    it "display weight 590 and its 4 incremental weights" do
      post 'results', :weight => 590
      assigns(:weight).should == 590

      # 590 / 4 == 147.5 but we want to floor to a num divisable by 10
      assigns(:weight1).should == 140

      # 147.5 * 2 floor to a divisable 10
      assigns(:weight2).should == 290

      # 147.5 * 3 floor to a divisable 10
      assigns(:weight3).should == 440

      assigns(:weight4).should == 590
    end

  end
end
