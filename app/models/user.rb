class User < ActiveRecord::Base

	has_attached_file :avatar,                                                                          
		:styles => {
			:normal => "120x120#",
	        :small => "60x60#",
			},                  
        :url  => '/avatars/:style/:basename.:extension',  
        :path => ':rails_root/public/avatars/:style/:basename.:extension'
        validates_attachment_presence :avatar  
	    validates_attachment_size :avatar, :less_than => 5.megabytes  
	    validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/png)

	has_many :comments
	has_many :games

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
