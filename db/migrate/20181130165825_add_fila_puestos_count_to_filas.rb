class AddFilaPuestosCountToFilas < ActiveRecord::Migration[5.2]
  def change
    add_column :filas, :fila_puestos_count, :integer, limit: 5
  end
end
