class AddCategoryToOrganisms < ActiveRecord::Migration[6.0]
  def change
    add_column :organisms, :category, :string
  end
end
