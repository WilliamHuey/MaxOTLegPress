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

    it "should calculate number of plates on one side for 570" do
      post 'results', :weight => 570
      assigns(:first_warmup_45_plate_count).should == 1
      assigns(:first_warmup_35_plate_count).should == 0
      assigns(:first_warmup_25_plate_count).should == 1
      assigns(:first_warmup_10_plate_count).should == 0
      assigns(:first_warmup_5_plate_count).should == 0

      assigns(:second_warmup_45_plate_count).should == 3
      assigns(:second_warmup_35_plate_count).should == 0
      assigns(:second_warmup_25_plate_count).should == 0
      assigns(:second_warmup_10_plate_count).should == 0
      assigns(:second_warmup_5_plate_count).should == 1

      assigns(:third_warmup_45_plate_count).should == 4
      assigns(:third_warmup_35_plate_count).should == 0
      assigns(:third_warmup_25_plate_count).should == 1
      assigns(:third_warmup_10_plate_count).should == 0
      assigns(:third_warmup_5_plate_count).should == 1

      assigns(:fourth_warmup_45_plate_count).should == 6
      assigns(:fourth_warmup_35_plate_count).should == 0
      assigns(:fourth_warmup_25_plate_count).should == 0
      assigns(:fourth_warmup_10_plate_count).should == 1
      assigns(:fourth_warmup_5_plate_count).should == 1
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

    it "should calculate number of plates on one side for 590" do
      post 'results', :weight => 590
      assigns(:first_warmup_45_plate_count).should == 1
      assigns(:first_warmup_35_plate_count).should == 0
      assigns(:first_warmup_25_plate_count).should == 1
      assigns(:first_warmup_10_plate_count).should == 0
      assigns(:first_warmup_5_plate_count).should == 0

      assigns(:second_warmup_45_plate_count).should == 3
      assigns(:second_warmup_35_plate_count).should == 0
      assigns(:second_warmup_25_plate_count).should == 0
      assigns(:second_warmup_10_plate_count).should == 1
      assigns(:second_warmup_5_plate_count).should == 0

      assigns(:third_warmup_45_plate_count).should == 4
      assigns(:third_warmup_35_plate_count).should == 1
      assigns(:third_warmup_25_plate_count).should == 0
      assigns(:third_warmup_10_plate_count).should == 0
      assigns(:third_warmup_5_plate_count).should == 1

      assigns(:fourth_warmup_45_plate_count).should == 6
      assigns(:fourth_warmup_35_plate_count).should == 0
      assigns(:fourth_warmup_25_plate_count).should == 1
      assigns(:fourth_warmup_10_plate_count).should == 0
      assigns(:fourth_warmup_5_plate_count).should == 0
    end
  end
end
