class Animal
    attr_accessor :species, :weight, :nick_name
    @@all = []

    def initialize(species,weight,nick_name)
        @species = species
        @weight = weight 
        @nick_name = nick_name

        @@all << self
    end

    def self.all
        @@all
    end

    def exhibits
        Exhibit.all.select do |exhibit|
            exhibit.animal == self
        end
    end

    def zoo
        self.exhibits.map do |exhibit|
            exhibit.zoo
        end
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species 
        end 
    end
end
