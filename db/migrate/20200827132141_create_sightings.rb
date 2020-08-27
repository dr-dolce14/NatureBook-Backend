class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :organism, null: false, foreign_key: true
      t.string :location
      t.float :lat
      t.float :lng
      t.string :habitat
      t.string :weather
      t.string :date

      t.timestamps
    end
  end
end
