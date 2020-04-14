require_relative '../lib/01_cryptofolies'

describe "cesar_change_letter" do
  it "for cesar_key = 4, a return e " do
    expect(cesar_change_letter("a", 4)).to eq("e")
  end

  it "for cesar_key = 4, z return d " do
    expect(cesar_change_letter("z", 4)).to eq("d")
  end

  it "for cesar_key = 4, a return e " do
    expect(cesar_change_letter("A", 4)).to eq("E")
  end

  it "for cesar_key = 4, z return d " do
    expect(cesar_change_letter("Z", 4)).to eq("D")
  end
end

describe "cesar_change_word" do
  it "for cesar_key = 5 What return Bmfy" do
    expect(cesar_change_word("What", 5)).to eq("Bmfy")
  end

  it "for cesar_key = 5 string return xywnsl" do 
    expect(cesar_change_word("string", 5)).to eq("xywnsl")
  end
end

describe "cesar_cipher" do
  it "for cesar_key = 5 What a string! return Bmfy f xywnsl!" do
    expect(cesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end