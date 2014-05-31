class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title
      t.belongs_to :client

      t.timestamps
    end
  end
end
