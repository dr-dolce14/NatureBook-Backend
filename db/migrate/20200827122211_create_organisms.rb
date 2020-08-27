class CreateOrganisms < ActiveRecord::Migration[6.0]
  def change
    create_table :organisms do |t|
      t.string :type
      t.string :common_name
      t.string :scientific_name
      t.string :image

      t.timestamps
    end
  end
end
