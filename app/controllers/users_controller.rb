class UsersController < ApplicationController

  def show
    @user = current_user
<<<<<<< HEAD
=======
    @items = @user.items
>>>>>>> b84b004af992fbeffdb9e2c0e1c775955b14ee7c
  end

end
