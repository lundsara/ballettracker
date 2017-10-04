class CreateBallets < ActiveRecord::Migration[5.1]
  def change
    create_table :ballets do |t|
      t.string :name
      t.string :composer
      t.string :choreographer
      t.string :ballerina

      t.timestamps
    end
  end
end
