class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.references :title, null: false, foreign_key: true
      t.string :user_name
      t.string :reply_title
      t.integer :favorite

      t.timestamps
    end
  end
end
