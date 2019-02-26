class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
  	@@all #Returns an `array` of all the galleries
  end

  def paintings #Returns an `array` of all paintings in a gallery
  	matched =Painting.all.select do |x| x.gallery == self
end
outArray = []
outArray << matched[0].title
outArray
  end

  def artists # Returns an `array` of all artists that have a painting in a gallery
  matched = Painting.all.select do |x|  x.gallery == self
  end
  outArray = []
  outArray << matched[0].artist
outArray
  end

  def artists_name #Returns an `array` of the names of all artists that have a painting in a gallery
  	matched = Painting.all.select do |x| x.gallery == self
end
outArray = []
outArray << matched[0].artist.name
outArray
  end

  def most_expensive_painting #Returns an `instance` of the most expensive painting in a gallery
  end


end
