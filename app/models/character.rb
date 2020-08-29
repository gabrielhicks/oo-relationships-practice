class Character
    # - .most_appearances
    # - should return which character of film/television appears in the most films
    #   or tv shows
    # - movies and shows have many characters
    # - characters may have multiple movies or shows
    # - actors have many characters
    # - characters only have one actor (for this model)
        #character keeps track of it's actor

    attr_accessor :name, :actor


    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.most_appearances
        max_appearances = self.all.map { |char| char.number_of_appearances }.max
        self.all.select { |char| char.number_of_appearances == max_appearances}
    end

    def self.all
        @@all
    end

    def number_of_appearances
        #Movies that character has been in
        movies = MovieCharacter.all.select { |mc| mc.character == self }.count
        #Shows that character has been in 
        shows = ShowCharacter.all.select { |sc| sc.character == self }.count

        movies + shows 

    end


end