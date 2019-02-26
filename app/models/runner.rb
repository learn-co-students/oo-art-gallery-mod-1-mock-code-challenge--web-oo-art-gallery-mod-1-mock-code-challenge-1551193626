require_relative "artist.rb"
require_relative "painting.rb"
require_relative "gallery.rb"

red_velvet = Painting.new("Red Velvet", 1_000_000)
black_pink = Painting.new("Black Pink", 500_000)

=begin
p red_velvet
p black_pink
=end

=begin
p Painting.all
p Painting.total_price
=end

sm_ent = Artist.new("SM Entertainment", 30)
yg_ent = Artist.new("YG Entertainment", 20)

p sm_ent
p yg_ent

create_painting("SNSD", 1_000_000, "Best")
p Artist.all
