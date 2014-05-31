class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :body
      t.string :title

      t.belongs :client
      t.timestamps
    end
  end
end
