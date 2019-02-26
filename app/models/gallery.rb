class Gallery

  attr_reader :name, :city
  @@galleries = []

  def initialize(name, city)
    @name = name
    @city = city
    @@galleries << self
  end

  def self.all
    @@galleries
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists(artist)
    artists_paintings = paintings.select do |painting|
      painting.artist == artist
    end
    artists_paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names(artist)

    artists_paintings = paintings.select do |painting|
      painting.artist == artist
    end

    artists_paintings.map do |painting|
      painting.artist.name
    end

  end

  def most_expensive_painting
    sorted_paintings = paintings.sort { | a, b | b.price <=> a.price }
    return sorted_paintings[0]
  end



end


=begin

* `Gallery.all`
  * Returns an `array` of all the galleries
IMP:


* `Gallery#paintings`
  * Returns an `array` of all paintings (objects) in a gallery
IMP:

* `Gallery#artists`
  * Returns an `array` of all artists (objects) that have a painting in a gallery
IMP:

* `Gallery#artist_names`
  * Returns an `array` of the names of all artists that have a painting in a gallery
IMP:

* `Gallery#most_expensive_painting`
  * Returns an `instance` of the most expensive painting in a gallery
IMP:


=end
