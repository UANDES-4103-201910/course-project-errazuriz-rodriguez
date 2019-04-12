class Post < ApplicationRecord
    validates :user_id, presence: true, numericality: true
    validates :title, presence: true
    validates :description, presence: true
    validates :image, presence: true
    validates :location, presence: true
end
