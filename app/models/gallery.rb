class Gallery

  attr_reader :name, :city

@@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @painting = []
    @artist = []

    @@all << self
  end

  def paintings(painting)
    @painting << painting
    painting.artist = self
  end

  def artists(artist)
    @artist << artist
    
  end

end

binding.pry

false