class Artist

  attr_reader :name, :years_experience
  attr_accessor :paintings

  @@all = []
  @@total_experience = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_experience
    Artist.all.select do |artist|
      artist.years_experience
    end.inject(0){|sum,x| sum + x }
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price)
    new_painting.gallery = gallery
    @@all << new_painting
  end

end
