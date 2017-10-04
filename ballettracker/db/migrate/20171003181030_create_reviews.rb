class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :ballet_id

      t.timestamps
    end
    add_index :reviews, :ballet_id
  end
end
