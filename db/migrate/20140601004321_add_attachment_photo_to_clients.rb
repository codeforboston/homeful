class AddAttachmentPhotoToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :clients, :photo
  end
end
