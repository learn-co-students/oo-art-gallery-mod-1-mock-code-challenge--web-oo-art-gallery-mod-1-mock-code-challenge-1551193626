class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    list_of_prices = @@all.collect do |painting|
      painting.price
    end
    list_of_prices.inject(0) do |sum, x|
      sum + x
    end
  end

end
