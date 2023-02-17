require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns string if given string contains 5 or less words" do
    result = make_snippet("This string has five words")
    expect(result).to eq "This string has five words"
  end

  it "returns first 5 words + '...' if given string is longer than 5 words" do
    result = make_snippet("This string is longer than five words")
    expect(result).to eq "This string is longer than ..."
  end

  it "returns an empty string if given an empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end
end