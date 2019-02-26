class Painting

  attr_reader :title, :price

  @@all = []
  @@paintings = []
  def initialize(title, price)
    @title = title
    @price = price
    @@all << title
    @@paintings << price
  end

  def all
    return @@all
  end

  def total_price
    @@paintings.select do |t|
      t.is_a?(Integer)
    end
    @@paintings
  end

end
