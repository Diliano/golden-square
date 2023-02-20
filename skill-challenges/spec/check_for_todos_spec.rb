require 'check_for_todos'

RSpec.describe "check_for_todos method" do
  
  context "returns an error" do
    it "fails and returns 'Invalid input' when given an empty string" do
      expect { check_for_todos("") }.to raise_error "Invalid input"
    end
    it "fails and returns 'Invalid input' when input is not a string" do
      expect { check_for_todos(1234) }.to raise_error "Invalid input"
    end 
  end

  context "returns false" do
    it "returns false when text does not contain '#TODO'" do
      expect(check_for_todos("This is a piece of text")).to eq false
    end
  end

  context "returns true" do
    it "returns true when text only contains '#TODO'" do
      expect(check_for_todos("#TODO")).to eq true 
    end
    it "returns true when text contains '#TODO' within the text" do
      expect(check_for_todos("this #TODO is within the text")).to eq true
    end
    it "returns true when text contains 'TODO' without the '#'" do
      expect(check_for_todos("I need to remember this TODO")).to eq true
    end
    it "returns true when text contains lowercase '#todo'" do
      expect(check_for_todos("I really need to remember this #todo")).to eq true
    end
    it "returns true when text contains lowercase 'todo' without the '#'" do
      expect(check_for_todos("I hope I remember this todo")).to eq true
    end
  end
end