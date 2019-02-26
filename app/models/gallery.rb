class Gallery

  attr_reader :name, :city
  @@all =[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
      Painting.all.map{|art| art = art.self}
  end

  def artists
      Artist.all.map{|art| @name = art.self}
  end


  def artist_names
      Artist.all.map{|art| @name = art.name}
  end


  def most_expensive_painting
      Painting.select.max{|art| @price.self}
  end




end
