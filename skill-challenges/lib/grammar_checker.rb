def grammar_checker(text)
  return false if !text.is_a?(String)
  return false if text.empty?
  if (text[0] == text[0].capitalize) && (text.end_with?("!", ".", "?"))
    return true
  else
    return false
  end
end