class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string  :title
      t.decimal :amount
      t.text    :description

      t.belongs_to :client

      t.timestamps
    end
  end
end
