class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")

=begin
    drake = Artist.all.detect{|a| a.name = 'Drake'}
    if drake 
      self.artist = drake 
    else 
      drake = Artist.create(name: "Drake")
      self.artist = drake
    end 
=end 

  end

end