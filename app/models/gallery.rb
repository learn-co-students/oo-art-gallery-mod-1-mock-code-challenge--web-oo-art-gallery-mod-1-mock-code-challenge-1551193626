class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    artist_list = paintings.collect do |painting|
      painting.artist
    end
    artist_list.uniq
  end

  def artist_names
    artist_names = artists.collect do |artist|
      artist.name
    end
    artist_names.uniq
  end

  def most_expensive_painting
    pricey_painting = nil
    price = 0
    paintings.each do |painting|
      if painting.price > price
        price = painting.price
        pricey_painting = painting
      end
    end
    pricey_painting
  end

end
