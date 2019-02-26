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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    gallery_list = paintings.collect do |painting|
      painting.gallery
    end
    gallery_list.uniq
  end

  def cities
    city_list = galleries.collect do |gallery|
      gallery.city
    end
    city_list.uniq
  end

  def self.total_experience
    experiences = @@all.collect do |artist|
      artist.years_experience
    end
    experiences.inject(0) do |sum,x|
      sum + x
    end
  end

  def self.most_prolific
    prolific_artist = nil
    prolific_measure = 0
    @@all.each do |artist|
      contender_measure = (artist.paintings.length).to_f/(artist.years_experience).to_f
      if contender_measure > prolific_measure
        prolific_artist = artist
        prolific_measure = contender_measure
      end
    end
    prolific_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
