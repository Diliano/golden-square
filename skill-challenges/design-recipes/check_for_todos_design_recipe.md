# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby

contains_todos = check_for_todos(text)

# * text is a string e.g "This is a piece of text"
# * contains_todos is a boolean value (true or false) that represents if the given text contains a todo

# * method will account for user forgetting the '#' and/or not using uppercase 

```

## 3. Create Examples as Tests

```ruby

# 1
# check_for_todos("")
# => "Invalid input"

# 2
# check_for_todos("This is a piece of text")
# => false

# 3
# check_for_todos("#TODO")
# => true

# 4
# check_for_todos("this #TODO is within the text")
# => true

# 5
# check_for_todos("I need to remember this TODO")
# => true

# 6
# check_for_todos("I really need to remember this #todo")
# => true

# 7
#check_for_todos("I hope I remember this todo")
# => true

# 8
# check_for_todos(1234)
# => "Invalid input"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._