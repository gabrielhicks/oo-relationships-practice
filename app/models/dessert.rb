#### Desserts

# - #ingredients
#   - should return an array of ingredients objects for the dessert
# - #bakery
#   - should return the bakery object for the dessert
# - #calories
#   - should return a float totaling all the calories for all the ingredients included in that dessert
# - .all
#   - should return an array of all dessert objects


class Dessert

    attr_accessor :name
    #@@all = []

    def initialize(name)
        @name = name
    end

    def ingredients
        DessertIngredient.all.select { |di| di.ingredient == self }
    end

end