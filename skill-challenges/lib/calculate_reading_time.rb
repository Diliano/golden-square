def calculate_reading_time(text)
  words = text.split(" ")
  reading_time = (words.count.to_f / 200).ceil
  return reading_time
end