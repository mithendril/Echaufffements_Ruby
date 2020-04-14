require_relative '../lib/02_jean_michel_trader'

describe "array_of_benefit_per_day" do
  it "to test array return benefit_array " do
    expect(array_of_benefit_per_day([17, 3, 6, 9, 15, 8, 6, 1, 10], 0)).to eq([-14, -11, -8, -2, -9, -11, -16, -7])
    expect(array_of_benefit_per_day([17, 3, 6, 9, 15, 8, 6, 1, 10], 7)).to eq([9])
  end
end

describe "day_trader" do
  it " to find better day for buy and for sale to gain more money return [buy-day, sale_day]" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([2,5])
  end
end