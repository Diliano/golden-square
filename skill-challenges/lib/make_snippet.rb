def make_snippet(string)
  words = string.split(" ")
  if words.size <= 5
    return string
  else 
    first_five_words = words[0,5].join(" ")
    return first_five_words + " ..."
  end
end