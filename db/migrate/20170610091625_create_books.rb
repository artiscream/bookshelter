class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image
      t.string :author
      t.string :description
      t.integer :year
      t.integer :cost
      t.boolean :is_here

      t.timestamps
    end
  end
end
