def grammar_checker(text)
  fail "Invalid input" if !text.is_a?(String)
  fail "Invalid input" if text.empty?
  first_letter_uppercase = text[0] == text[0].upcase
  last_char_suitable = text.end_with?("!", ".", "?")
  if first_letter_uppercase && last_char_suitable
    return true
  else
    return false
  end
end