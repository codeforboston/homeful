class AddStatusToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :status, :string, default: "active"
  end
end
