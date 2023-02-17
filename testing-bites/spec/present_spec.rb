require 'present'

RSpec.describe Present do
  it "wraps and unwraps input" do
    present = Present.new()
    present.wrap("Toy")
    expect(present.unwrap).to eq "Toy"
  end

  it "fails to unwrap when present has not been wrapped first" do
    present = Present.new()
    expect { present.unwrap }.to raise_error "No contents have been wrapped." 
  end

  it "fails to wrap if already wrapped" do
    present = Present.new()
    present.wrap("Toy")
    expect { present.wrap("Book") }.to raise_error "A contents has already been wrapped."
  end
end