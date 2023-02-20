# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby

reading_time = calculate_reading_time(text)

* text is a string of words (e.g "This is a short piece of text")
* reading_time is an integer value of the minutes required to read the text, rounded up to the nearest minute

```

## 3. Create Examples as Tests

```ruby

# 1
# calculate_reading_time("")
# => 0

# 2
# calculate_reading_time("word") # less than 200 words
# => 1

# 3
# calculate_reading_time("TWO_HUNDRED_WORDS")
# => 1

# 4
# calculate_reading_time("FIVE_HUNDRED_WORDS")
# => 3

# 5
# calculate_reading_time("ONE_THOUSAND_WORDS")
# => 5

# 6
# calculate_reading_time("THREE_THOUSAND_WORDS")
# => 15

# 7
calculate_reading_time("EIGHT_THOUSAND_WORDS")
# => 40

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._