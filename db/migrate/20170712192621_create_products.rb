class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
