require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct when guess matches" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns close when guess has a first letter of h and last letter of e" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "returns wrong in all other cases" do
    result = check_codeword("dog")
    expect(result).to eq "WRONG!"
  end
end