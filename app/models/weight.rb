class Weight
  def self.calculate_plates(weight)
    num45 = weight / 45
    num35 =
        (weight - (45 * num45)) / 35
    num25 =
      (weight -
      (45 * num45) -
      (35 * num35)) / 25
    num10 =
      (weight -
      (45 * num45) -
      (35 * num35) -
      (25 * num25)) / 10
    num5 =
      (weight -
      (45 * num45) -
      (35 * num35) -
      (25 * num25) -
      (10 * num10)) / 5

    return {
      :num45 => num45,
      :num35 => num35,
      :num25 => num25,
      :num10 => num10,
      :num5 => num5
    }
  end
  def self.wills_calculate_plates(weight)
    num45 = weight / 45
    num35 =
        (weight - (45 * num45)) / 35
    num25 =
      (weight -
      (45 * num45) -
      (35 * num35)) / 25
    num10 =
      (weight -
      (45 * num45) -
      (35 * num35) -
      (25 * num25)) / 10
    num5 =
      (weight -
      (45 * num45) -
      (35 * num35) -
      (25 * num25) -
      (10 * num10)) / 5

    return {
      :num45 => num45,
      :num35 => num35,
      :num25 => num25,
      :num10 => num10,
      :num5 => num5
    }
  end
end
