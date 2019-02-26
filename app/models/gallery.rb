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

  def most_expensive_painting
    # Returns an instance of the most expensive painting in a gallery
    self.paintings.sort do |a, b|
      a.price <=> b.price
    end
    self.paintings.last
  end

end
