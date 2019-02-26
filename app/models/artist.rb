class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # Returns an array of all the paintings by an artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    # Returns an array of all the galleries that an artist has paintings in
    Gallery.all.select do |gallery|
      gallery.paintings.artist == self
    end
  end

  def self.total_experience
    total_experience = 0
    self.all.each do |artist|
      total_experience += artist.years_experience
    end
    total_experience
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, self, gallery)
  end

end
