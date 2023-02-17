require 'string_builder'

RSpec.describe StringBuilder do
  it "adds strings together and returns the character length" do
    string = StringBuilder.new()
    string.add("Hi")
    string.add(" there")
    result = string.size()
    expect(result).to eq 8
  end

  it "returns length of 0 when user does not add any strings" do
    string = StringBuilder.new()
    result = string.size()
    expect(result).to eq 0
  end

  it "adds strings together and returns the concatenated string" do
    string = StringBuilder.new()
    string.add("Hi")
    string.add(" there")
    result = string.output()
    expect(result).to eq "Hi there"
  end

  it "returns empty string when user does not add any strings" do
    string = StringBuilder.new()
    result = string.output()
    expect(result).to eq ""
  end

end