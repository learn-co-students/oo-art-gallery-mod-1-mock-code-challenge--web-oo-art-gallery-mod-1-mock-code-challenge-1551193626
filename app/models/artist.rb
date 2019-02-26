class Artist

  attr_reader :name, :years_experience

  @@artist = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artist << self
  end

  def self.all
    @@artist
  end

  # def self.paintings
  #   Painting.all
  # end

end

# p Artist.new("Vytautas", 5)
# p Artist.paintings
