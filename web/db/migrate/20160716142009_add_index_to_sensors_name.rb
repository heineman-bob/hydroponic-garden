class AddIndexToSensorsName < ActiveRecord::Migration
  def change
    add_index(:sensors, :name)
  end
end
