class Orarendkep < ActiveRecord::Migration
 def self.up
	add_column :oraks, :photo_file_name, :string
	add_column :oraks, :photo_content_type, :string
	add_column :oraks, :photo_file_size, :integer
 end

 def self.down
	remove_coloumn :oraks, :photo_file_name
	remove_coloumn :oraks, :photo_content_type
	remove_coloumn :oraks, :photo_file_size
 end
end
