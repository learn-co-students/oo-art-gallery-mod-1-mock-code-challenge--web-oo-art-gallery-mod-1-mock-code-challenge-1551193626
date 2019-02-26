class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all.push(self)
  end

  def paintings
    Painting.all.select {|painting|
      paiting.artist == self
    }
  end

  def galleries
    paintings.map {|artists_painting|
      artists_painting.gallery
    }
  end

  def cities
    galleries.map {|artists_paintings_gallery|
      artists_paintings_gallery.city
    }
  end

  def self.total_experience
    total = nil
    self.all.each {|artist|
      total += artist.years_experience
    }
    return total
  end

  def self.most_prolific
    most_prolific_artist = nil
    highest_years = 0

    self.all.each {|artist|
      if artist.years_experience > highest_years
        highest_years = artist.years_experience
        most_prolific_artist = artist.name
      end
    }
    return most_prolific_artist
  end

  def create_painting(title, price, gallery)
    newPainting = Painting.new(title, price, gallery)
    newPainting.artist = self
    newPainting
  end

  def self.all
    @@all
  end

end
