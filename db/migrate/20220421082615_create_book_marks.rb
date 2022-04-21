class CreateBookMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :book_marks do |t|
      t.integer :user_id
      t.text :url
      t.string :name
      t.integer :evaluation
      t.text :memo

      t.timestamps
    end
  end
end
