class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location

        @@all << self
    end

    def self.all
        @@all
    end

    def exhibits
        Exhibit.all.select do |exhibit|
            exhibit.zoo == self
        end
    end

    def animals
       self.exhibits.map do |exhibit|
        exhibit.animal
       end
    end
        
        

    def animal_species
        Exhibit.all.map do |exhibit|
            species = exhibit.animal.species
        end.uniq
    end

    def find_by_species(species)
        self.exhibits.map do |exhibit|
            if exhibit.animal.species == species
            exhibit.animal
        end
    end
    end

    def animal_nickname
        self.exhibits.map do |exhibit|
            exhibit.animal.nick_name
        end
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end
end
