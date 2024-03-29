class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def google_oauth2
        @user = User.from_omniauth(request.env["omniauth.auth"])
        # puts request.env["omniauth.auth"]
        if @user.persisted?
            sign_in @user, :event => :authentication #this will throw if @user is not activated
            # set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
        else
            session["devise.google_data"] = request.env["omniauth.auth"]
        end
        # puts current_user.first_name
        redirect_to 'http://localhost:3001/home'
    end
end