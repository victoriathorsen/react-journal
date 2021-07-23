class User < ApplicationRecord
    # has_many: posts
    validates :name, presence: true
    validates :password_digest, presence: true, length: {minimum: 7}
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :username, presence: true



end
