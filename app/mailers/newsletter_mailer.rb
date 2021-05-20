class NewsletterMailer < ApplicationMailer


    def newsMailer(email)
        @email = email
        puts("here")
        mail(to: @email, subject: 'Welcome')
    end


    def passwordMailer(user)
        @email = user.email
        @token = user.password_token
        mail(to: @email, subject: 'Forgot your password?')
    end
end
