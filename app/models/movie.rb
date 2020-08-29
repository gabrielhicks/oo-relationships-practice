class Movie
    # - .most_actors
    # - should return the movie which has the most actors in it. this is so the
    #   studio knows never to hire that director again because he/she makes
    #   expensive movies

    # - movies and shows have many characters
    # - characters may have multiple movies or shows

    attr_accessor :title

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_actors
        max_actors = self.all.map { |movie| movie.actors.count }.max
        self.all.find { |movie| movie.actors.count == max_actors }
        #need to iterate through movies to get characters (through MovieCharacters)
        #Then iterate through those selected characters for their actors - find unique ones
        #count actors to find max
        #return movie with max actors  
    end

    def actors
        MovieCharacter.all.select { |mh| mh.movie == self}.map { |mh| mh.character}.map { |char| char.actor }.uniq
        #iterate over characters of the show
        #find the actor value for the show
    end
end