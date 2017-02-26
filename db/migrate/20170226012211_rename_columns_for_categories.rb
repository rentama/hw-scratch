class RenameColumnsForCategories < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :middle_category_name, :middle
    rename_column :categories, :large_category_name, :large
  end
end
