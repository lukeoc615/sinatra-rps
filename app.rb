require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
 moves = ['rock', 'paper', 'scissors']
 
 comp_moves = moves.sample
  
 if comp_moves == "rock"
    outcome = "tied"
 elsif comp_moves == "paper"
    outcome = "lost"
 else comp_moves == "scissors"
    outcome = "won"
 end
 "
  <h2>
    We played rock!
  </h2>

  <h2>
   They played #{comp_moves}!
  </h2>

  <h2>
    We #{outcome}!
  </h2>
  "
end
