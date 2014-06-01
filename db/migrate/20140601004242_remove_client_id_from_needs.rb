class RemoveClientIdFromNeeds < ActiveRecord::Migration
  def up
    remove_column :needs, :client_id
  end

  def down
    add_column :needs, :client_id, :integer
  end
end
