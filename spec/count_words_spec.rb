require 'count_words'

RSpec.describe "count_words method" do
  it "returns 0 when given an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "returns 5 when given a string containing 5 words" do
    result = count_words("This string has five words")
    expect(result).to eq 5
  end

  it "returns 7 when given a string containing 7 words" do
    result = count_words("This string has seven words in it")
    expect(result).to eq 7
  end
end