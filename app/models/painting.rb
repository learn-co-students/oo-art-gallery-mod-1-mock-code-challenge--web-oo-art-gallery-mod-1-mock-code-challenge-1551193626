class Painting

  attr_reader :title, :painter
  attr_accessor :price, :gallery

  @@all = []

  def initialize(painter, title, price, gallery)
    @title = title
    @price = price
    @painter = painter
    @gallery =  gallery
    @@all << self
  end

def self.all
  @@all
end

def self.total_price
  sum = 0
  @@all.map do |painting|
    sum = painting.price + sum
  end
  sum
end

end
