Rails.application.routes.draw do
  get '/game' => 'game#try'
  # get '/game/:number' => 'game#try'
  get '/new_game' => 'game#reset'
  get '/username/:name' => 'game#username'
  get '/check_password' => 'password#check'

end

#The path is created by the developer. Basically, it can be whatever you want it to be.

#But the game#try is pointing to the game_controller.rb
