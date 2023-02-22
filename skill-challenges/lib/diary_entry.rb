class DiaryEntry
  
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @words_read_so_far = 0 
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return words.size
  end

  def reading_time(wpm) 
    fail "Words per minute must be above zero" if wpm == 0
    time_to_read = (count_words / wpm.to_f).ceil
    return time_to_read
  end

  def reading_chunk(wpm, minutes) 
    fail "Words per minute must be above zero" if wpm == 0
    fail "Available time must be more than 0 minutes" if minutes == 0
    num_words_that_can_be_read = wpm * minutes
    start_from = @words_read_so_far
    end_at = @words_read_so_far + num_words_that_can_be_read
    chunk = words[start_from...end_at].join(" ")
    @words_read_so_far = end_at
    if end_at >= count_words
      @words_read_so_far = 0
    else
      @words_read_so_far = end_at
    end
    return chunk
  end

  private 

  def words 
    return @contents.split(" ")
  end

end