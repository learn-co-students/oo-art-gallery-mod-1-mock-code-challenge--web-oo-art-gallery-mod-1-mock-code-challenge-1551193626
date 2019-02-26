require 'pry'
class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

def create_painting(title, price, gallery)
  Painting.new(self, title, price, gallery)
end

def paintings
  Painting.all.select{|each_work| each_work.painter == self}
end

def galleries
  paintings.map {|each_work| each_work.gallery}
end

def cities
  paintings.map {|each_work| each_work.gallery.city}
end

def self.all
  @@all
end

def prolific
  @years_experience / paintings.length
end

def self.total_experience
  sum = 0
  @@all.map do |artist|
    sum = artist.years_experience + sum
  end
  sum
end

def self.most_prolific
   int = 100
   prol_art = nil
   @@all.select do |artist|
    if artist.prolific < int
      int = artist.prolific
       prol_art = artist
     end
   end
   prol_art
  end

end
