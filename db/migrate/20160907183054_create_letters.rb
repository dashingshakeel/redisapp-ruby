class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :name
      t.text :description
      t.integer :scroe

      t.timestamps null: false
    end
  end
end
