require 'calculate_reading_time'

RSpec.describe "calculate_reading_time method" do
  it "returns 0 when given an empty string" do
    result = calculate_reading_time("")
    expect(result).to eq 0
  end

  it "returns 1 when given less than two hundred words" do 
    result = calculate_reading_time("word")
    expect(result).to eq 1
  end

  it "returns 1 when given 200 words" do
    result = calculate_reading_time("word " * 200)
    expect(result).to eq 1
  end

  it "returns 3 when given five hundred words" do
    result = calculate_reading_time("word " * 500)
    expect(result).to eq 3
  end

  it "returns 5 when given one thousand words" do
    result = calculate_reading_time("word " * 1000)
    expect(result).to eq 5
  end

  it "returns 15 when given three thousand words" do
    result = calculate_reading_time("word " * 3000)
    expect(result).to eq 15
  end

  it "returns 40 when given eight thousand words" do
    result = calculate_reading_time("word " * 8000)
    expect(result).to eq 40
  end
end