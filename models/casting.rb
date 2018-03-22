require_relative("../db/sql_runner")

class Casting

attr_reader :id
attr_accessor :movie_id, :star_id, :fee

def initialize(options)
  @id = options['id'].to_i if options['id']
  @movie_id = options['movie_id'].to_i
  @star_id = options['star_id'].to_i
  @fee= options['fee']
end
