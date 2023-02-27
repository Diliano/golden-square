class MusicTracker

  def initialize 
    @track_list = []
  end

  def add_track(track)
    @track_list << track 
  end

  def list_tracks
    fail "There are no tracks stored" if @track_list.empty?
    return @track_list.uniq
  end

end