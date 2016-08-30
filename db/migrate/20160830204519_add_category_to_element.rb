class AddCategoryToElement < ActiveRecord::Migration
  def change
    add_column :elements, :category, :string
  end
end
