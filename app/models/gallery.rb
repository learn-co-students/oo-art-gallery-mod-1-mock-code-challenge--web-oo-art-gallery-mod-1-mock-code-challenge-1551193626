class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all.push(self)
  end

  def paintings
    Painting.all.select {|painting|
      painting.gallery == self.name
    }
  end

  def artists
    paintings.map {|galleries_painting|
      galleries_painting.artist
    }
  end

  def artist_names
    artists.map {|galleries_paintings_artist|
      galleries_paintings_artist.name
    }
  end

  def most_expensive_painting
    highest_price = 0
    most_expensive = ''

    paintings.each {|painting|
      if painting.price > highest_price
        highest_price = painting.price
        most_expensive = painting.self
      end
    }

    return most_expensive
  end

  def self.all
    @@all
  end

end
