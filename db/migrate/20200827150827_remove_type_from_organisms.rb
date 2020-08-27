class RemoveTypeFromOrganisms < ActiveRecord::Migration[6.0]
  def change
    remove_column :organisms, :type, :string
  end
end
