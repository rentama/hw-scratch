class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :middle_category_name
      t.string :large_category_name
    end

    add_index :categories, :middle_category_name
    add_index :categories, :large_category_name 
  end
end
