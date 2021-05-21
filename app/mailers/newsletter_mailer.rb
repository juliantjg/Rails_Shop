class NewsletterMailer < ApplicationMailer


    def newsMailer(email)
        @email = email
        mail(to: @email, subject: 'Welcome')
    end


    def passwordMailer(passwordResetUser)
        @email = User.find_by(id: passwordResetUser.user_id).email
        @token = passwordResetUser.password_token
        mail(to: @email, subject: 'Forgot your password?')
    end
end
