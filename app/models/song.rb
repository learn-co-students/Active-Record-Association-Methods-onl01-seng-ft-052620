class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
  artist_found =  Artist.find_by name: "Drake"
    if !artist_found
    drake = Artist.new
    drake.name = "Drake"
    drake.save
    self.artist = drake
    return drake
  else artist_found
    self.artist = artist_found
    end
    self.artist
  end
end
