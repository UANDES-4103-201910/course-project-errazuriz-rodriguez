class Message < ApplicationRecord
  belongs_to :sender
  belongs_to :receiver

  validates :sender_id, presence: true, numericality: true
  validates :recever_id, presence: true, numericality: true
  validates :message, presence: true
end
