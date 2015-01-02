require 'byebug'

class SongsController < ApplicationController
  # has_many :parts
  # has_attached_file :pdf
  # validates_attachment_content_type :pdf, content_type: "application/pdf"

  def new
    @song = Song.new
byebug
    # Upload a file
    metadata = Google::Drive::File.new(@song)
    metadata = drive.insert_file(metadata, upload_source: 'test.txt', content_type: 'text/plain')

  end
end