class User < ActiveRecord::Base

	validates :name, :email, presence: true
	validates :name, :email, uniqueness: { case_sensitive: false }

	has_secure_password
	before_create { generate_token(:auth_token) }

	def generate_token(column)
	  begin
	    self[column] = SecureRandom.urlsafe_base64
	  end while User.exists?(column => self[column])
	end
end
