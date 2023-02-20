require 'grammar_checker'

RSpec.describe "grammar_checker method" do
  
  context "will return an error" do
    it "returns invalid input when given an empty string" do
      expect { grammar_checker("") }.to raise_error "Invalid input"
    end
    it "returns invalid input when input is not a string" do
      expect { grammar_checker(1234) }.to raise_error "Invalid input"
    end
  end
  
  context "will return false verification" do
    it "returns false when string starts with lowercase and ends with no punctuation" do
      expect(grammar_checker("this is not suitable")).to eq false
    end
    it "returns false when string starts with uppercase and ends with no punctuation" do
      expect(grammar_checker("This nearly works")).to eq false
    end
    it "returns false when string starts with lowercase and ends with suitable punctuation" do
      expect(grammar_checker("this nearly works too!")).to eq false
    end
    it "returns false when string starts with uppercase and ends with ','" do
      expect(grammar_checker("Not a suitable ending,")). to eq false
    end
  end

  context "will return true when positive verification" do
    it "returns true when string starts with uppercase and ends in '!'" do
      expect(grammar_checker("This definitely works!")).to eq true
    end
    it "returns true when string starts with uppercase and ends with '.'" do
      expect(grammar_checker("Different, but still works.")).to eq true
    end
    it "returns true when string starts with uppercase and ends with '?'" do
      expect(grammar_checker("Does this still work?")).to eq true
    end
  end
end