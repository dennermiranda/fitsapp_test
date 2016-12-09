class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
					format: { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false }

	has_secure_password
	validates :kind, presence: true
	validates :password, presence: true, length: { minimum: 6 }

	has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
    has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id"
end
