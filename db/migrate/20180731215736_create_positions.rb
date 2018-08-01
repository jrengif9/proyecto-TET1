class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.integer :user
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
