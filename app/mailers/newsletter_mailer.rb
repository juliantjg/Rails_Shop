class NewsletterMailer < ApplicationMailer


    def newsMailer(email)
        @email = email
        puts("here")
        mail(to: @email, subject: 'Welcome')
    end


    def passwordMailer(user)
        @email = user.email
        @user2 = User.find_by(email: user.email)

        mail(to: @email, subject: 'Forgot your password?')
    end
end
