class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :nickname, :string
    add_column :users, :photo, :string
  end
end
