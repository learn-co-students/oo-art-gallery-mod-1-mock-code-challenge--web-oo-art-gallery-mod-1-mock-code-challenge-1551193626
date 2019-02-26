class Artist

  attr_reader :name, :years_experience
  #attr_accessor :gallery
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end


  def paintings(name)
      self.all.map{|art| art.name = self }

  end

  def galleries
    gallery_array = Gallery.all.map{|art| art = self.name}
  end

  def cities
      #array of all cities
      cities_array = Gallery.all.map{|art| art = self.cities}
  end


  def self.total_experience
      self.years_experience
  end

  def self.most_prolific
      Painting.select.max{|art| self = @years_experience.name }
  end

  def create_painting(title,price,gallery)
    new_painting = Painting.new(title,price,gallery)
  end

end
