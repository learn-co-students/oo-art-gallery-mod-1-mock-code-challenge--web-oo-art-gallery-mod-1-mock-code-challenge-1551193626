class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    #returns an array of all paintings in the gallery...
  end

  def artists
    #Returns an array of all artists that have a painting in a gallery
  end

  def artist_names
  end

  def most_expensive_painting
    #
  end

end
