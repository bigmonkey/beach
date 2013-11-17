class Guest < ActiveRecord::Base
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :phone, presence: true
	validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "phone?" }
	before_save { email.downcase! }
end
