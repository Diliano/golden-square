def check_for_todos(text)
  fail "Invalid input" if text == ""
  fail "Invalid input" if !text.is_a?(String)
  error_proof_text = text.gsub("#", "").upcase # to account for user error
  if error_proof_text.include?("TODO")
    return true
  else
    return false
  end
end