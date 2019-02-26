class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << []
  end

  # def paintings(painting_title)
  #   @painting_title << painting_title
  #   painting_title.artist = self
  # end


end
