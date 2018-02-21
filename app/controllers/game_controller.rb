class GameController < ApplicationController
  def try
    session[:random] ||= rand(100)
    session[:counter] ||= 1

    @randomNumber = session[:random]
    @guess = params[:guess].to_i
    @result = ""
    @counter = session[:counter]
    @name = cookies[:name]

    if @guess < @randomNumber
      @result = "Your number is low!"
      session[:counter] += 1
    elsif @guess > @randomNumber
      @result = "Your number is high!"
      session[:counter] += 1
    else
      @result = "You are correct!"
    end
  end

  def reset
    reset_session
  end

  def username
    cookies[:name] = params[:name] unless
    params[:name].nil?
  end
end
