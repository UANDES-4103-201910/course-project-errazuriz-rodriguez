class User < ApplicationRecord
    validates :name, presence: true
    validates :lastname, presence: true
    validates :nick, presence: true
    validates :phone, presence: true, numericality: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :country, presence: true
    validates :city, presence: true
    validates :image, presence: true
    validates :password, presence: true
end
