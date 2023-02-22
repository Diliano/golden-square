require 'diary_entry'

RSpec.describe DiaryEntry do
  
  describe "@title" do
    it "returns title" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect(diary_entry.title).to eq "Monday"
    end
  end 

  describe "@contents" do
    it "returns contents" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect(diary_entry.contents).to eq "First day"
    end
  end

  describe "@count_words" do
    it "returns the number of words within contents" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect(diary_entry.count_words).to eq 2
    end
    it "returns zero when contents is empty" do
      diary_entry = DiaryEntry.new("Monday", "")
      expect(diary_entry.count_words).to eq 0
    end
  end 

  describe "@reading_time" do
    context "when given an average words per minute of 200" do
      it "returns 1 minute to read contents if 200 or less words" do
        diary_entry = DiaryEntry.new("Monday", "First day")
        expect(diary_entry.reading_time(200)).to eq 1
      end
      it "returns number of minutes to read contents (rounded up)" do
        diary_entry = DiaryEntry.new("Monday", "word " * 500)
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end
    it "fails and returns an error when given words per minute of 0" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect { diary_entry.reading_time(0) }.to raise_error "Words per minute must be above zero"
    end
  end

  describe "@reading_chunk" do
    context "when full contents can be read with given wpm and minutes" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("Monday", "First day")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "First day"
      end
    end
    context "when full contents is unreadable with given wpm and minutes" do
      it "returns the readable chunk of contents" do
        diary_entry = DiaryEntry.new("Monday", "First day")
        chunk = diary_entry.reading_chunk(1, 1)
        expect(chunk).to eq "First"
      end
      it "returns the next chunk of contents when asked again" do
        diary_entry = DiaryEntry.new("Monday", "First day")
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(1, 1)
        expect(chunk).to eq "day"
      end
      it "restarts after all the contents has been read" do
        diary_entry = DiaryEntry.new("Monday", "First day")
        diary_entry.reading_chunk(1, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(1, 1)
        expect(chunk).to eq "First"
      end
    end
    it "fails and returns an error when wpm is 0" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect { diary_entry.reading_chunk(0, 1) }.to raise_error "Words per minute must be above zero"
    end  
    it "fails and returns an error when available minutes is 0" do
      diary_entry = DiaryEntry.new("Monday", "First day")
      expect { diary_entry.reading_chunk(1, 0 )}.to raise_error "Available time must be more than 0 minutes"
    end
  end
  
end