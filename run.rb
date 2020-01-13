require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Exhibit.rb"
require 'pry'

z1 = Zoo.new("Bronx Zoo","Bronx")
z2 = Zoo.new("Cincinatti Zoo", "Ohio")
a1 = Animal.new("Lion",450,"Simba")
a3 = Animal.new("Lion",450,"Jimbo")
a2 = Animal.new("Seal",90,"Cup")
Exhibit.new(a1,z1)
Exhibit.new(a2,z1)
Exhibit.new(a3,z1)



binding.pry
puts "done"
