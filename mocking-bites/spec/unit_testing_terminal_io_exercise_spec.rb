require 'unit_testing_terminal_io_exercise'

RSpec.describe InteractiveCalculator do
  
  context "when the user is asked for 2 numbers" do
    it "returns the result of subtracting the second number from the first" do
      io = double :io

      expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
      expect(io).to receive(:puts).with("Please enter a number").ordered
      expect(io).to receive(:gets).and_return("4").ordered
      expect(io).to receive(:puts).with("Please enter another number").ordered
      expect(io).to receive(:gets).and_return("3").ordered
      expect(io).to receive(:puts).with("Here is your result:").ordered
      expect(io).to receive(:puts).with("4 - 3 = 1").ordered

      interactive_calculator = InteractiveCalculator.new(io)
      interactive_calculator.run
    end
  end

end