class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@paintings = []

  # when passing in artist you need to pass in a new instance of Artist, not just an artist name.

  # when passing in gallery you need to pass in a new instance of Gallery, not just a gallery name.
  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@paintings << self
  end

  def self.all
    @@paintings
  end

  def self.total_price
    total_price = 0
    self.all.map do |painting|
      total_price += painting.price
    end
    return total_price
  end

end

=begin

* `Painting.all`
  * Returns an `array` of all the paintings

IMP: Returns the class variable @@paintings

* `Painting.total_price`
  * Returns an `integer` that is the total price of all paintings

IMP: Iterates over an array and returns the sum of the value of all paintings
inside of the @@all array.

=end
