class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.decimal :amount

      t.belongs_to :donor
      t.belongs_to :client
      t.belongs_to :goal

      t.timestamps
    end
  end
end
