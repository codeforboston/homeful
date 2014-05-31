class AddClientDonorPartnerAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :users, :video, :string
    add_column :users, :balance, :decimal, precision: 8, scale: 2
    add_column :users, :total, :decimal, precision: 8, scale: 2
    add_column :users, :homepage, :string
  end
end
