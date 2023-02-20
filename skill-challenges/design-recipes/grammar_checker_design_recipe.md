# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby

verified = grammar_checker(text)

# * text is a string of words (e.g "This is a short piece of text.")
# * 'verified' is a boolean value (true or false) that represents if the given text meets the criteria
# * the criteria is to start with a capital letter and end with suitable punctuation ( . or ? or ! )

```

## 3. Create Examples as Tests

```ruby

# 1
# grammar_checker("")
# => false

# 2
# grammar_checker("this is not suitable")
# => false

# 3
# grammar_checker("This nearly works")
# => false

# 4
# grammar_checker("this nearly works too!")
# => false

# 5
# grammar_checker("This definitely works!")
# => true

# 6
# grammar_checker("Different, but still works.")
# => true

# 7
# grammar_checker("Does this still work?")
# => True

# 8
# grammar_checker(1234) # not a string
# => false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._