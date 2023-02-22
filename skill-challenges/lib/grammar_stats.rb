class GrammarStats
  def initialize
    @meets_criteria = 0
    @does_not_meet_criteria = 0
  end

  def check(text) 
    fail "Invalid - no input" if text.empty?
    starts_with_capital = text[0] == text[0].upcase
    suitable_end = text.end_with?(".", "?", "!")
    if starts_with_capital && suitable_end
      @meets_criteria += 1
      return true
    else
      @does_not_meet_criteria += 1
      return false
    end
  end

  def percentage_good
    fail "No texts have been checked" if (@meets_criteria == 0) && (@does_not_meet_criteria == 0)
    total_checked = @meets_criteria + @does_not_meet_criteria
    percentage_that_meets_criteria = ((@meets_criteria / total_checked.to_f) * 100).to_i
    return percentage_that_meets_criteria
  end
end