class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(artist, title, price)
    @artist = artist
    @title = title
    @price = price
    @gallery = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    all.map(&:price).sum
  end

end
