class User < ApplicationRecord

    has_many :shoppingbags  

    validates :username, presence: true, length: { maximum: 25 }
    validates :email, presence: true, length: { maximum: 100 },
                format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
                uniqueness: { case_sensitive: false }
    before_save { self.email = email.downcase }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                        BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

end
