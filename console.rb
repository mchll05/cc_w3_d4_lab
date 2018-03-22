require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')
require('pry-byebug')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

movie1 = Movie.new({ 'title' => 'High Noon', 'genre' => 'western', 'rating' => 10 })
movie2 = Movie.new({ 'title' => 'Whatever happened to Baby Jane?', 'genre' => 'horror', 'rating' => 8 })
movie3 = Movie.new({ 'title' => 'Bringing up Baby', 'genre' => 'comedy', 'rating' => 9 })

movie1.save()
movie2.save()
movie3.save()

star1 = Star.new({ 'first_name' => 'Grace', 'last_name' => 'Kelly' })
star2 = Star.new({ 'first_name' => 'Bette', 'last_name' => 'Davis' })
star3 = Star.new({ 'first_name' => 'Katherine', 'last_name' => 'Hepburn' })

star1.save()
star2.save()
star3.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 50000 })
casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 75000 })
casting3 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 100000 })

casting1.save()
casting2.save()
casting3.save()



binding.pry
nil
