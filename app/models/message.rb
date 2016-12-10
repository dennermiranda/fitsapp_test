class Message < ApplicationRecord
  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"
  
  validates :receiver_id, presence: true
  validates :sender_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
