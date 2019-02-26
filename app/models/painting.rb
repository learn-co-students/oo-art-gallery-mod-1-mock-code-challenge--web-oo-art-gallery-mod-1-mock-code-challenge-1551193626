class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def total_price
    sum = 0
    @@all.each do |painting|
      painting.each do |title, price, artist, gallery|
        sum += price
    end
    return sum
  end

end
