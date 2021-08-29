class User < ApplicationRecord
    
    has_many :posts, dependent: :destroy
    
    has_secure_password
    validates :password_digest, presence: true, length: {minimum: 7}
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :username, presence: true, uniqueness: true


end
