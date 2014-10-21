class AddAttachmentPdfToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :songs, :pdf
  end
end
