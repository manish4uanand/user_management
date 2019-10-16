class HomeController < ApplicationController

    def index
        if current_user.present?
            if current_user.admin == true
                @users = User.all.where(admin: false)            
            end
        end
    end

    def edit_user
        @user = User.find params[:format] 
    end

    def update_user
        @user = User.find params[:format] 
        @user.address = params[:address]
        @user.save!
    end
    
end
