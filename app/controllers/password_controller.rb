class PasswordController < ApplicationController
  def check

    cookies[:userid] = params[:userid] unless
    params[:userid].nil?
    cookies[:password] = params[:password] unless
    params[:password].nil?

    @name = cookies[:userid]
    @password = cookies[:password]

    if @name.length > 5 &&
       @name.length < 20 &&
       !@name.include?("#") &&
       !@name.include?("$") &&
      @password.length > 5 &&
       @password.length < 20 &&
       !@password.include?("#") &&
        !@password.include?("$")
      @result = "Your credentials are valid"

    else
      @result = "Please enter valid crendentials!"
    end
  end
end
