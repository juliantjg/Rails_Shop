class NewsletterMailer < ApplicationMailer


    def newsMailer(email)
        @email = email
        puts("here")
        mail(to: @email, subject: 'Welcome')
    end


    def passwordMailer(email)
        @email = email
        user2 = User.find_by(email: email)

        #@token = user2.signed_id(purpose:"changepassword", expires_in: 30.minutes)
        mail(to: @email, subject: 'Forgot your password?')
    end
end
