class CreatePuestos < ActiveRecord::Migration[5.2]
  def change
    create_table :puestos do |t|
      t.string :nombre, limit: 30
      t.string :rotulo, limit: 10
      t.references :fila, foreign_key: true

      t.timestamps
    end
  end
end
