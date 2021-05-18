class OmniauthCallbacksController < ApplicationController
    def twitter
        twitterHandle = auth.info.nickname
        twitterName = auth.info.name
        twitterEmail = auth.info.email

        # session[:user_id] = auth.info.email
        

        redirect_to root_path
    end

    def auth
        request.env['omniauth.auth']
    end
end