class PagesController < ApplicationController
  def home
  end

  def results
    @weight = params[:weight].to_i
    weight1by4 = @weight / 4.0
    @weight1 = weight1by4 - weight1by4.remainder(10)
    @weight2 = (weight1by4 * 2) - (weight1by4 * 2).remainder(10)
    @weight3 = (weight1by4 * 3) - (weight1by4 * 3).remainder(10)
    @weight4 = @weight

    half_weight1 = (@weight1 / 2).to_i
    half_weight2 = (@weight2 / 2).to_i
    half_weight3 = (@weight3 / 2).to_i
    half_weight4 = (@weight4 / 2).to_i

    @first_warmup_45_plate_count = half_weight1 / 45
    @first_warmup_35_plate_count =
        (half_weight1 - (45 * @first_warmup_45_plate_count)) / 35
    @first_warmup_25_plate_count =
      (half_weight1 -
      (45 * @first_warmup_45_plate_count) -
      (35 * @first_warmup_35_plate_count)) / 25
    @first_warmup_10_plate_count =
      (half_weight1 -
      (45 * @first_warmup_45_plate_count) -
      (35 * @first_warmup_35_plate_count) -
      (25 * @first_warmup_25_plate_count)) / 10
    @first_warmup_5_plate_count =
      (half_weight1 -
      (45 * @first_warmup_45_plate_count) -
      (35 * @first_warmup_35_plate_count) -
      (25 * @first_warmup_25_plate_count) -
      (10 * @first_warmup_10_plate_count)) / 5
    
    @second_warmup_45_plate_count = half_weight2 / 45
    @second_warmup_35_plate_count =
        (half_weight2 - (45 * @second_warmup_45_plate_count)) / 35
    @second_warmup_25_plate_count =
      (half_weight2 -
      (45 * @second_warmup_45_plate_count) -
      (35 * @second_warmup_35_plate_count)) / 25
    @second_warmup_10_plate_count =
      (half_weight2 -
      (45 * @second_warmup_45_plate_count) -
      (35 * @second_warmup_35_plate_count) -
      (25 * @second_warmup_25_plate_count)) / 10
    @second_warmup_5_plate_count =
      (half_weight2 -
      (45 * @second_warmup_45_plate_count) -
      (35 * @second_warmup_35_plate_count) -
      (25 * @second_warmup_25_plate_count) -
      (10 * @second_warmup_10_plate_count)) / 5
    
    @third_warmup_45_plate_count = half_weight3 / 45
    @third_warmup_35_plate_count =
        (half_weight3 - (45 * @third_warmup_45_plate_count)) / 35
    @third_warmup_25_plate_count =
      (half_weight3 -
      (45 * @third_warmup_45_plate_count) -
      (35 * @third_warmup_35_plate_count)) / 25
    @third_warmup_10_plate_count =
      (half_weight3 -
      (45 * @third_warmup_45_plate_count) -
      (35 * @third_warmup_35_plate_count) -
      (25 * @third_warmup_25_plate_count)) / 10
    @third_warmup_5_plate_count =
      (half_weight3 -
      (45 * @third_warmup_45_plate_count) -
      (35 * @third_warmup_35_plate_count) -
      (25 * @third_warmup_25_plate_count) -
      (10 * @third_warmup_10_plate_count)) / 5
    
    @fourth_warmup_45_plate_count = half_weight4 / 45
    @fourth_warmup_35_plate_count =
        (half_weight4 - (45 * @fourth_warmup_45_plate_count)) / 35
    @fourth_warmup_25_plate_count =
      (half_weight4 -
      (45 * @fourth_warmup_45_plate_count) -
      (35 * @fourth_warmup_35_plate_count)) / 25
    @fourth_warmup_10_plate_count =
      (half_weight4 -
      (45 * @fourth_warmup_45_plate_count) -
      (35 * @fourth_warmup_35_plate_count) -
      (25 * @fourth_warmup_25_plate_count)) / 10
    @fourth_warmup_5_plate_count =
      (half_weight4 -
      (45 * @fourth_warmup_45_plate_count) -
      (35 * @fourth_warmup_35_plate_count) -
      (25 * @fourth_warmup_25_plate_count) -
      (10 * @fourth_warmup_10_plate_count)) / 5
  end
end