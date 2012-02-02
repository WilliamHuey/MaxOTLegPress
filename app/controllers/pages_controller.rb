class PagesController < ApplicationController
  def home
  end

  def results
    @weight = params[:weight].to_i
    weight1by4 = @weight / 4.0
    @weight1 = (weight1by4 - weight1by4.remainder(10)).to_i
    @weight2 = ((weight1by4 * 2) - (weight1by4 * 2).remainder(10)).to_i
    @weight3 = ((weight1by4 * 3) - (weight1by4 * 3).remainder(10)).to_i
    @weight4 = @weight

    half_weight1 = @weight1 / 2
    half_weight2 = @weight2 / 2
    half_weight3 = @weight3 / 2
    half_weight4 = @weight4 / 2

    @num_plates1 = Weight.calculate_plates(half_weight1)
    @num_plates2 = Weight.calculate_plates(half_weight2)
    @num_plates3 = Weight.calculate_plates(half_weight3)
    @num_plates4 = Weight.calculate_plates(half_weight4)
  end
end