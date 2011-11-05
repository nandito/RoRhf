class Orak < ActiveRecord::Base
	#paperclip
	has_attached_file :photo,
		:styles => {
			:thumb => "100x100#",
			:small => "150x150",
			:medium => "650x300",
			:large => "1200x800"
		}
end
