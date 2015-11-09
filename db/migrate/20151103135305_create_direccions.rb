class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :numero
      t.string :comuna
      t.string :cuidad
      t.string :pais
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
