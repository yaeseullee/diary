class Story < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader

end
