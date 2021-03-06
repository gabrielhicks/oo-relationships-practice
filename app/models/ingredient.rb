#### Ingredients

# - #dessert
#   - should return an array of all dessert objects that use this ingredient
# - #bakeries
#   - should return the bakery objects for the bakeries that use that ingredient
# - .all
#   - should return an array of all ingredients
# - .find_all_by_name(ingredient)
#   - should take a string argument and return an array of all ingredients that
#     include that string in their name
#     - .find_all_by_name('chocolate') might return ['chocolate sprinkles',
#       'chocolate mousse', 'chocolate']
#     - make sure you aren't just looking for exact matches (like 'chocolate' ==
#       'chocolate')


class Ingredient

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end
end