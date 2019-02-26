class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    newpainting = Painting.new(title, price)
    newpainting.artist = self
    newpainting.gallery = gallery
    newpainting
  end

  def galleries
    Painting.all.select {|painting| painting.artist == self
    }.map {|painting_inst| painting_inst.gallery}
  end

  def cities
    galleries.map {|gallery_inst| gallery_inst.city}
  end

  def self.total_experience
    @@all.sum {|artist_inst| artist_inst.years_experience}
  end

  def self.most_prolific ############ fucked this one up and realized it with 1 minute to go
    @@all.max {|x, y| x.years_experience <=> y.years_experience}
  end

end
