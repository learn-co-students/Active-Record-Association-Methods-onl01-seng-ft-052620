class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.length
  end

  def artist_count
    # return the number of artists associated with the genre
    artist = []
    self.songs.each do |song|
      artist << song.artist_id
    end

    artist.uniq.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_name = []
    self.songs.each{|song| artist_name << Artist.find_by(id: song.artist_id).name}
    artist_name
  end
end
