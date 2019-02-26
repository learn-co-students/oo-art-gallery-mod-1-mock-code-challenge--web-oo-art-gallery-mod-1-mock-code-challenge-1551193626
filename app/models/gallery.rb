class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self.name
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    final_arr = []
    Arists.all.each do |artist|
      if self.artists.include(artist)
        final_arr << artist.name
      end
    end
    final_arr
  end

  def most_expensive_painting
    prices = []
    Painting.all.select do |painting|
      prices << painting.price
    end
    prices = prices.sort
    Painting.all.select do |painting|
      painting.price == prices[-1]
  end

end
