class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :blob, :styles => { :large => "800x800", :medium => "400x400>", :small => "200x200>"}
  do_not_validate_attachment_file_type :blob
end
