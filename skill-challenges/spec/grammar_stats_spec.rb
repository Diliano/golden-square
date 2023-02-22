require 'grammar_stats'

RSpec.describe GrammarStats do
  
  describe "@check" do
    it "fails and returns an error when given an empty string" do
      grammar_stats = GrammarStats.new
      expect { grammar_stats.check("") }.to raise_error "Invalid - no input"
    end
    context "returns false when text does not meet criteria" do
      it "returns false when text starts with lowercase" do
        grammar_stats = GrammarStats.new
        meets_criteria = grammar_stats.check("unsuitable text.")
        expect(meets_criteria).to eq false
      end
      it "returns false when text ends with unsuitable punctuation" do
        grammar_stats = GrammarStats.new
        meets_criteria = grammar_stats.check("Unsuitable text,")
        expect(meets_criteria).to eq false
      end
    end
    context "returns true when text meets criteria" do
      it "returns true when text starts with capital and ends with '.'" do
        grammar_stats = GrammarStats.new
        meets_criteria = grammar_stats.check("Suitable text.")
        expect(meets_criteria).to eq true
      end
      it "returns true when text starts with capital and ends with '?'" do
        grammar_stats = GrammarStats.new
        meets_criteria = grammar_stats.check("Suitable text?")
        expect(meets_criteria).to eq true
      end
      it "returns true when text starts with capital and ends with '!'" do
        grammar_stats = GrammarStats.new
        meets_criteria = grammar_stats.check("Suitable text!")
        expect(meets_criteria).to eq true
      end
    end
  end

  describe "@percentage_good" do
    it "fails and returns an error when no texts have been checked" do
      grammar_stats = GrammarStats.new
      expect { grammar_stats.percentage_good }.to raise_error "No texts have been checked"
    end
    it "returns zero when all texts checked so far do not meet the criteria" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("does not work")
      grammar_stats.check("doesn't work")
      grammar_stats.check("still does not work")
      expect(grammar_stats.percentage_good).to eq 0
    end
    it "returns 100 when all texts checked so far meet the criteria" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Does work.")
      grammar_stats.check("Still works!")
      grammar_stats.check("Does this still work?")
      expect(grammar_stats.percentage_good).to eq 100
    end
    context "when multiple texts have been checked with different results" do
      it "returns the integer percentage of texts that meet the criteria" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Does work.")
        grammar_stats.check("Still works!")
        grammar_stats.check("does not work")
        grammar_stats.check("doesn't work")
        expect(grammar_stats.percentage_good).to eq 50
      end
      it "returns the integer percentage of texts that meet the criteria" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Does work.")
        grammar_stats.check("Still works!")
        grammar_stats.check("Does this still work?")
        grammar_stats.check("does not work")
        grammar_stats.check("doesn't work")
        grammar_stats.check("still does not work")
        grammar_stats.check("does this still not work?")
        expect(grammar_stats.percentage_good).to eq 42
      end
    end
  end

end