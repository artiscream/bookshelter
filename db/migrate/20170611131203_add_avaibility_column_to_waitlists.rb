class AddAvaibilityColumnToWaitlists < ActiveRecord::Migration[5.0]
  def change
  	add_column :waitlists, :book_available, :boolean
  end
end
