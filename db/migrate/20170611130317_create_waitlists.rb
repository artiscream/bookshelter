class CreateWaitlists < ActiveRecord::Migration[5.0]
  def change
    create_table :waitlists do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :is_complete

      t.timestamps
    end
  end
end
