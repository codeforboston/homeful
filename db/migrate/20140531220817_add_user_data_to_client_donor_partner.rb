class AddUserDataToClientDonorPartner < ActiveRecord::Migration
  def change
    add_column :clients,  :full_name, :string
    add_column :clients,  :nickname,  :string
    add_column :clients,  :photo,     :string

    add_column :donors,   :bio,       :text  
    add_column :donors,   :full_name, :string
    add_column :donors,   :nickname,  :string
    add_column :donors,   :photo,     :string

    add_column :partners, :full_name, :string
    add_column :partners, :photo,     :string
  end
end
