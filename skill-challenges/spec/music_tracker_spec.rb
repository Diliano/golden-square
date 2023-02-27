require 'music_tracker'

RSpec.describe MusicTracker do
  
  context "when there are no tracks stored" do
    it "returns an error when the list is called" do
      music_tracker = MusicTracker.new
      expect { music_tracker.list_tracks }.to raise_error "There are no tracks stored"
    end
  end

  context "when one track is added" do
    it "returns the track in a list when called" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("song1")
      expect(music_tracker.list_tracks).to eq ["song1"]
    end
  end
  
  context "when multiple tracks are added" do
    it "returns all of the tracks in a list when called" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("song1")
      music_tracker.add_track("song2")
      music_tracker.add_track("song3")
      expect(music_tracker.list_tracks).to eq ["song1", "song2", "song3"]
    end
  end

  context "when duplicate tracks are added" do
    it "returns a list of the tracks without any duplicates" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("song1")
      music_tracker.add_track("song2")
      music_tracker.add_track("song2")
      expect(music_tracker.list_tracks).to eq ["song1", "song2"]
    end
  end
end