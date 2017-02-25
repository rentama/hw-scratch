class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :tab
      t.integer :favorite_count
      t.string :middle_category_name, foreign_key: true
    end

    add_index :products, :middle_category_name
  end
end
