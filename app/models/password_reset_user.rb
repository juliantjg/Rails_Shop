class PasswordResetUser < ApplicationRecord
    def generate_token(column)
        begin
            self[column] = SecureRandom.urlsafe_base64
        end while PasswordResetUser.exists?(column => self[column])
    end
end
