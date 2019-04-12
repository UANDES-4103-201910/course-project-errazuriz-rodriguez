class PostAttachment < ApplicationRecord
    validates :post_id, presence: true, numericality: true
    validates :file, presence: true
end
