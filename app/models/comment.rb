class Comment < ApplicationRecord
    validates :user_id, presence: true, numericality: true
    validates :post_id, presence: true, numericality: true
    validates :comment, presence: true
end
