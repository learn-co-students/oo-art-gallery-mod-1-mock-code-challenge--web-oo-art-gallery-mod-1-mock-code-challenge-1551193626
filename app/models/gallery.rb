class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  #returns an array of .all the galleries
  def self.all
    @name << @@all
  end
  #returns an array of all #painitngs in the gallery
  def painitngs
    Painting.all.each {|painting| painting.gallery}
  end
  #returns and array of all #artists
  def self.artist
    Gallery.name {|all_artist| = Artist.name}
  end

  #return an array of the #artist_names
  def artist_names

  end

  #return an instance of the #most_expensive_painting
  def most_expensive_painting
    Painting.price {|most_expensive| Painting.price}.max
  end
end
