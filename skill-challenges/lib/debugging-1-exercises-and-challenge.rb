# Exercise 1

def say_hello(name)
  return "hello #{name}"
end

> say_hello("kay")
=> "hello kay"

# Exercise 2

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

> encode("theswiftfoxjumpedoverthelazydog", "secretkey")
=> "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

> decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
=> "theswiftfoxjumpedoverthelazydog"

# Challenge

def get_most_common_letter(text)
  counter = Hash.new(0)
  text_stripped = text.gsub(/[^\w]/, "") # removes all non-word characters
  text_stripped.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0] # sorts by counter value and retrieves the letter with the highest count
end

> get_most_common_letter("the roof, the roof, the roof is on fire!")
=> "o"