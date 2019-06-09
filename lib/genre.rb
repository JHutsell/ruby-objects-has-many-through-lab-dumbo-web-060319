class Genre 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    
    @@all << self 
  end
  
  def artists
    Song.all.select { |song| song.genre == self }
  end
  
  
  
end