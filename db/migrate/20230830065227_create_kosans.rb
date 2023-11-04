class CreateKosans < ActiveRecord::Migration[7.0]
  def change
    create_table :kosans do |t|
      t.string :nama
      t.text :description
      t.text :rules
      t.string :alamat

      t.timestamps
    end
  end
end
