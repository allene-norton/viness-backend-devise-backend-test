class CurrentUserController < ApplicationController
    before_action :authenticate_user!
    def index
        if user_signed_in?
            search_id = current_user.id 
            user = User.where(id: search_id).first
            render json: user
            puts current_user
            puts user_signed_in?
        else
            render json: {}, status: 401
            puts user_signed_in?
            puts current_user
        end
    end
end