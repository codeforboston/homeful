class AddAttachmentPhotoToPartners < ActiveRecord::Migration
  def self.up
    change_table :partners do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :partners, :photo
  end
end
