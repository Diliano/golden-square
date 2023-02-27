# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface  

```ruby

class MusicTracker

  def initialize 
    # ...
  end

  def add_track(track)
    # track is a string that represents the track being added
    # track will be stored
    # method does not return any values
  end

  def list_tracks
    # does not take any input parameters
    # returns an array of strings that lists all the tracks added 
    # list does not return any duplicates
  end

end

```

## 3. Create Examples as Tests

```ruby

# 1
music_tracker = MusicTracker.new
music_tracker.list_tracks 
# => "There are no tracks stored"

# 2
music_tracker = MusicTracker.new
music_tracker.add_track("song1")
music_tracker.list_tracks
# => ["song1"]

# 3 
music_tracker = MusicTracker.new
music_tracker.add_track("song1")
music_tracker.add_track("song2")
music_tracker.add_track("song3")
music_tracker.list_tracks
# => ["song1", "song2", "song3"]

# 4
music_tracker = MusicTracker.new
music_tracker.add_track("song1")
music_tracker.add_track("song2")
music_tracker.add_track("song2")
music_tracker.list_tracks
# => ["song1", "song2"]

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._



