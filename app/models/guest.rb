class Guest < ActiveRecord::Base
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, message: "appears to be invalid." }
	validates :phone, presence: true
	validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "appears not to be in xxx-xxx-xxxx format." }
	before_save { email.downcase! }


end
