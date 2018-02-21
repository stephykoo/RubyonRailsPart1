Rails.application.routes.draw do
  get '/game' => 'game#try'
  get '/game/:guess' => 'game#try'
  get '/new_game' => 'game#reset'
  get '/username/:name' => 'game#username'
end

#The path is created by the developer. Basically, it can be whatever you want it to be.

#But the game#try is pointing to the game_controller.rb
