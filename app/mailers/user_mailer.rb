class UserMailer < ApplicationMailer

    default from: 'railsapp@example.com'

    def welcome_email
        mail(to: params[:email], subject: 'Welcome to My Awesome Site')
        redirect_to("/home")
    end

end
