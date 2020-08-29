class Show
#     - #on_the_big_screen
#     - should return Movies that share the same name as this Show
#     - movies and shows have many characters
#     - characters may have multiple movies or shows

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end


    def self.all
        @@all
    end

    def actors
        ShowCharacter.all.select { |sh| sh.show == self}.map { |sh| sh.character}.map { |sh| sh.actor }.uniq
        #iterate over characters of the show
        #find the actor value for the show
    end

    def on_the_big_screen
        Movie.all.select { |movie| movie.title.include?(self.title) }
    end

end
