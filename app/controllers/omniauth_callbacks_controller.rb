class OmniauthCallbacksController < ApplicationController
    def twitter
        twitterHandle = auth.info.nickname
        twitterName = auth.info.name
        twitterEmail = auth.info.email
        
        redirect_to root_path, notice: "Twitter login successful!"
    end

    def auth
        request.env['omniauth.auth']
    end
end