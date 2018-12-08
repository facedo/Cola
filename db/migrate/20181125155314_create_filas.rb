class CreateFilas < ActiveRecord::Migration[5.2]
  def change
    create_table :filas do |t|
      t.integer :numero, limit: 2
      t.string :nombre, limit: 30
      t.string :siglas, limit: 6
      t.integer :max_avisos, limit: 2
      t.integer :ult_num, limit: 5
      t.date :fe_ult_num

      t.timestamps
    end
  end
end
