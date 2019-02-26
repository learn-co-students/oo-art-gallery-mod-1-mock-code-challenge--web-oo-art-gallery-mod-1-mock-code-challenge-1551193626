class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def display_painting(paintingname)
    paintingname.gallery = self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting_inst| painting_inst.gallery = self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    Painting.all.max {|a, b| a.price <=> b.price}
  end

end
