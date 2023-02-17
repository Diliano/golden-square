1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

```ruby

estimated_time = reading_time(text)

* text is a string e.g ("This is a short piece of text")
* estimated_time is the estimated number of seconds required to read the given text, rounded up
* user is assumed to read 200 words a minute

```

Include the name of the method, its parameters, return value, and side effects.

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.