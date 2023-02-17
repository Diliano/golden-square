require 'greet'

RSpec.describe "greet method" do
  it "greets with name" do
    result = greet("Dilan")
    expect(result).to eq "Hello, Dilan!"
  end
end