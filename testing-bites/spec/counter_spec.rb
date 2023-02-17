require 'counter'

RSpec.describe Counter do
  it "adds numbers and then returns the total count" do
    counter = Counter.new()
    counter.add(5)
    counter.add(27)
    result = counter.report()
    expect(result).to eq "Counted to 32 so far."
  end

  it "returns total count of 0 when no numbers are added" do
    counter = Counter.new()
    result = counter.report()
    expect(result).to eq "Counted to 0 so far."
  end
end