#JOIN

class Painting

  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @artist = artist
    @@all << self
  end

  def self.all 
  	@@all 
  end

  # def self.total_price
  # 	Painting.all.select |painting| 
  # 		self.price 
  # end

end
