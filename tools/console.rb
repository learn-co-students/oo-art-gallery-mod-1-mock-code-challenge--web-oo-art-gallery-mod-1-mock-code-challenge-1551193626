require_relative '../config/environment.rb'


jocab = Artist.new('jocab',90)
slocab = Artist.new('slocab',10)
facab = Artist.new('facab',20)
gugen = Gallery.new('Gugeen','NYC')
jocab.create_painting('fancyShit',123,gugen)

binding.pry

puts "Bob Ross rules."
