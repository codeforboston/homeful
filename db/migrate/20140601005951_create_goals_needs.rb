class CreateGoalsNeeds < ActiveRecord::Migration
  def up
    create_table :goals_needs, :id =>false do |t|
      t.references :goal
      t.references :need
    end
    add_index :goals_needs, [:goal_id, :need_id]
  end

  def down
    drop_table :goals_needs
  end
end
