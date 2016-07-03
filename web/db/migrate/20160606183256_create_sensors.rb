class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :address
      t.float :reading
      t.string :unit

      t.timestamps null: false
    end
  end
end
