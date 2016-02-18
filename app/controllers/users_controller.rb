class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
end



#Using the user id as params, we will find the users information to display. Next step is in View.