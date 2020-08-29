class Actor
    attr_accessor :name
    # - .most_characters
    # - should return which actor has the most different characters played.
    #   (probably meryl streep)
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        max_char = Actor.all.map { |actor| actor.number_characters }.max
        Actor.all.filter { |actor| actor.number_characters == max_char }
    end

    def number_characters
        Character.all.filter { |char| char.actor == self}.count
    end
 
    # - actors have many characters
    # - characters only have one actor (for this model)
end