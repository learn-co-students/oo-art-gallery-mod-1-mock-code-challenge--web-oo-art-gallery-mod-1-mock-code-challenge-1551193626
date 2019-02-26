class Artist

  attr_reader :name, :years_experience

  @@all_artist = []

  @@total_experience = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@total_experience << years_experience
    @@all_artist << name
  end

  def all
   return @@all_artist
  end

  def total_experience
    @@total_experience.select do |t|
      t.is_a?(Integer)
    end
   return @total_experience
  end

  def create_painting(title, price, gallery)
  end

end
