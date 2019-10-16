class HomeController < ApplicationController

    def index        
    end

    def edit_user
        @user = User.find params[:format] 
    end

    def update_user
        @user = User.find params[:format] 
        @user.address = params[:address]
        @user.save!
    end
    
    def users_list
        @users = User.all.where(admin: false).order('updated_at DESC')
    end

    def profile
        @user = current_user
    end

end
