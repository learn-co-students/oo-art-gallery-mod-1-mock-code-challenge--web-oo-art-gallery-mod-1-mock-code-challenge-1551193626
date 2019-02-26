class Gallery

  attr_reader :name, :city
  @all = []

  def initialize(name, city)
    @name = name
    @city = city
  end

def paintings
  Painting.all.select {|work| work.gallery ==  self}
end

def artists
  paintings.map {|work| work.painter}
end

def artist_names
  artists.map {|painter| painter.name}
end

def most_expensive_painting
  cost = 0
  exp_work = nil
  paintings.map do |work|
    if work.price > cost
      cost = work.price
      exp_work = work
    end
  end
  exp_work
end

def self.all
  @@all
end


end
