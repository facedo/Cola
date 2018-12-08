# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_30_165825) do

  create_table "fila_puestos", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.integer "numero", limit: 5
    t.integer "documento", limit: 10
    t.string "estado"
    t.time "hora_estado"
    t.integer "avisos", limit: 2
    t.integer "fila_id"
    t.integer "puesto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fila_id"], name: "index_fila_puestos_on_fila_id"
    t.index ["puesto_id"], name: "index_fila_puestos_on_puesto_id"
  end

  create_table "filas", force: :cascade do |t|
    t.integer "numero", limit: 2
    t.string "nombre", limit: 30
    t.string "siglas", limit: 6
    t.integer "max_avisos", limit: 2
    t.integer "ult_num", limit: 5
    t.date "fe_ult_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fila_puestos_counter", limit: 5
    t.integer "fila_puestos_count", limit: 5
  end

  create_table "puestos", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "rotulo", limit: 10
    t.integer "fila_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fila_id"], name: "index_puestos_on_fila_id"
  end

end
