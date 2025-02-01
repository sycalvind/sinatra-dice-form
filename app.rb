require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @num_rolls = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @rolls = []
  @num_rolls.times do
    roll = rand(1..@sides)
    @rolls.push(roll)
  end
  erb(:dice)
end
