class NewsletterMailer < ApplicationMailer


    def newsMailer(email)
        @email = email
        puts("here")
        mail(to: @email, subject: 'Welcome')
    end
end
