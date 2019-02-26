class Painting

  attr_reader :title, :price, :artist, :gallery
  attr_writer :gallery, :artist

  @@all = []
  @@total = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@total << price
    @@all << self
  end

  def self.all #Returns an `array` of all the paintings
  	@@all
  end

  def self.total_price #Returns an `integer` that is the total price of all paintings
    total = 0
    @@total.each do |x| total += x
    end
    total
    
  end




end
