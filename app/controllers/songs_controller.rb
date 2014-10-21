class SongsController < ApplicationController
  # has_many :parts
  # has_attached_file :pdf
  # validates_attachment_content_type :pdf, content_type: "application/pdf"

 def new
   @song = Song.new
 end
end