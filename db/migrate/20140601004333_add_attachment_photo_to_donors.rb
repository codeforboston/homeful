class AddAttachmentPhotoToDonors < ActiveRecord::Migration
  def self.up
    change_table :donors do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :donors, :photo
  end
end
