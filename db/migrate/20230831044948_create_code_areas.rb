class CreateCodeAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :code_areas do |t|
      t.string :code
      t.string :name
      t.integer :province_id

      t.timestamps
    end
  end
end
