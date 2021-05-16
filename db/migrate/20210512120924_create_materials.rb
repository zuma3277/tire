class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :name, null: false
      t.string :raw_material, null: false
      t.string :weight, null: false
      t.date :start_day, null: false
      t.date :end_day
      t.references :user, foreign_key: true

      

      t.timestamps
    end
  end
end
