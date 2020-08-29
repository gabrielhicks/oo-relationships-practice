require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#BAKERY
# pudding = Dessert.new("pudding")
# cake = Dessert.new("cake")
# pie = Dessert.new ("pie")

# sugar = Ingredient.new("sugar")
# chocolate = Ingredient.new("chocolate")
# flour = Ingredient.new("flour")

# DessertIngredient.new(sugar, pudding)
# DessertIngredient.new(sugar, cake)
# DessertIngredient.new(sugar, pie)
# DessertIngredient.new(chocolate, pudding)
# DessertIngredient.new(chocolate, cake)
# DessertIngredient.new(flour, cake)
# DessertIngredient.new(flour, pie)


#IMDB
jake = Actor.new("Jake")
jess = Actor.new("Jess")
seyi = Actor.new("Seyi")
gabe = Actor.new("Gabriel")
sam = Actor.new("Sam")
caryn = Actor.new("Caryn")
sean = Actor.new("Sean")
johnnie = Actor.new("Johnnie")
frank = Actor.new("Frank")
tori = Actor.new("Tori")

gww = Movie.new("Gone With the Wind")
gad = Movie.new("Guys and Dolls")
sponge = Movie.new("The Spongebob Movie")
lk = Movie.new("The Lion King")
moana = Movie.new("Moana")

bob = Show.new("Spongebob Squarepants")
friends = Show.new("Friends")
th = Show.new("Terrace House")
office = Show.new("The Office")
bach = Show.new("The Bachelor")

hi = Character.new("Hello", jake)

elliot = Character.new("Elliot", jake)
tp2 = Character.new("Townsperson 2", jake)
# exe= Character.new("Executive", jake)
# doc1 = Character.new("Doctor 1", jake)
# doc2 = Character.new("Doctor 2", jake)
# sid = Character.new("Sid the Science Kid", seyi)
# albert = Character.new("Albert", seyi)
# miji = Character.new("mojo", seyi)
# tp1 = Character.new("Townsperson 1", jess)
# jesschar = Character.new("Jessica", jess)
# grady = Character.new("Grady", jess)
# mojo = Character.new("Mojo", caryn)
# care = Character.new("Caryn", caryn)
# ronald = Character.new("Ronald McDonald", sean)
spongebob = Character.new("Spongebob", sean)
# spongebawb = Character.new("Spongebob", sam)
# lilj = Character.new("lil Johnnie", johnnie)
# kidf = Character.new("Kid Frank", frank)
# franky = Character.new("Franky", frank)
# ttt = Character.new("Tori the Tiger", tori)
# gabechar = Character.new("Gabriel", gabe)


ShowCharacter.new(bob, tp2)
ShowCharacter.new(friends, spongebob)
ShowCharacter.new(bob, spongebob)
ShowCharacter.new(office, tp2)
# ShowCharacter.new(bach, elliot)
# ShowCharacter.new(bob, tp2)
# ShowCharacter.new(th, spongebob)
# ShowCharacter.new(th, spongebob)
# ShowCharacter.new(friends, spongebob)

MovieCharacter.new(lk,spongebob)
MovieCharacter.new(lk,tp2)
MovieCharacter.new(gww,tp2)
# MovieCharacter.new(gad,tp2)
# MovieCharacter.new(sponge,spongebob)
# MovieCharacter.new(gad,elliot)
# MovieCharacter.new(moana,elliot)
# MovieCharacter.new(gad,elliot)
# MovieCharacter.new(moana,spongebob)


binding.pry