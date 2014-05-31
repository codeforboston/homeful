class DeleteUserTable < ActiveRecord::Migration
  def up
    drop_table (:users)
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Cannot recover deleted user"
  end
end
