require 'report_length'

RSpec.describe "report_length method" do
  it "returns 6 for the string 'Makers'" do
    result = report_length("Makers")
    expect(result).to eq "This string was 6 characters long."
  end

  it "returns 0 for the empty string ''" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end

  it "returns 3 for the string 'Hi!'" do
    result = report_length("Hi!")
    expect(result).to eq "This string was 3 characters long."
  end
end