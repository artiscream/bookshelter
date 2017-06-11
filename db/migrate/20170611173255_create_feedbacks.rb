class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.string :message
      t.string :subject

      t.timestamps
    end
  end
end
