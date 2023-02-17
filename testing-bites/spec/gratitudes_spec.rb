require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns an empty list initially" do
    gratitudes = Gratitudes.new()
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns an list of added graditudes" do
    gratitudes = Gratitudes.new()
    gratitudes.add("Family")
    gratitudes.add("Friends")
    gratitudes.add("Earth")
    expect(gratitudes.format).to eq "Be grateful for: Family, Friends, Earth"
  end
end