require_relative '../lib/00_multiple'

describe "the is_multiple_of_3_or_5 method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(3)).to eq(true)
    expect(is_multiple_of_3_or_5(5)).to eq(true)
    expect(is_multiple_of_3_or_5(51)).to eq(true)
    expect(is_multiple_of_3_or_5(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(8)).to eq(false)
    expect(is_multiple_of_3_or_5(52)).to eq(false)
    expect(is_multiple_of_3_or_5(101)).to eq(false)
    expect(is_multiple_of_3_or_5(11)).to eq(false)
  end
end

describe "the sum_of_3_or_5_multiples" do
  it "sum under 10" do
    expect(sum_of_3_or_5_multiples([3,5,6,9])).to eq(23)
  end

  it "sum under 11" do
    expect(sum_of_3_or_5_multiples([3,5,6,9,10])).to eq(33)
  end
end