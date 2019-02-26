
class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |each_painting|
      each_painting.artist == self
    end
  end

  def galleries
    paintings.gallery
  end
  # def galleries
  #   Painting.all.
  # end
  def cities
    
  end
  #
  # def self.total_experience
  #   Arist.all.select
  # end




end

# binding.pry
#
# false
