class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
   	  t.integer :user_id
      t.integer :book_id
      t.float :cost
      t.boolean :is_cart

      t.timestamps
    end
  end
end
