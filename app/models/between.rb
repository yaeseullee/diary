class Between < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	has_many :comments
end
