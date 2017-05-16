class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :prname
      t.string :maker
      t.string :description
      t.integer :year
      t.float :cost
      t.boolean :is_here

      t.timestamps
    end
  end
end
