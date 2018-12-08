class CreateFilaPuestos < ActiveRecord::Migration[5.2]
  def change
    create_table :fila_puestos do |t|
      t.date :fecha
      t.time :hora
      t.integer :numero, limit: 5
      t.integer :documento, limit: 10
      t.string :estado
      t.time :hora_estado
      t.integer :avisos, limit: 2
      t.references :fila, foreign_key: true
      t.references :puesto, foreign_key: true

      t.timestamps
    end
  end
end
