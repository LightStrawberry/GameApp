class Game < ActiveRecord::Base

	has_attached_file :image,                                                                          
		:styles => { 
			:title => "800x300#",
	        :s48 => "48x48#",
			},                  
        :url  => '/images/:id/:style/:basename.:extension',  
        :path => ':rails_root/public/images/:id/:style/:basename.:extension'  
	    validates_attachment_presence :image  
	    validates_attachment_size :image, :less_than => 5.megabytes  
	    validates_attachment_content_type :image, :content_type => %w(image/jpeg image/png)

	has_many :comments, dependent: :destroy
	belongs_to :user
end