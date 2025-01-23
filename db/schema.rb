# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_23_185141) do
  create_table "equipe_projetos", force: :cascade do |t|
    t.integer "equipe_id", null: false
    t.integer "projeto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipe_id"], name: "index_equipe_projetos_on_equipe_id"
    t.index ["projeto_id"], name: "index_equipe_projetos_on_projeto_id"
  end

  create_table "equipes", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipes_usuarios", id: false, force: :cascade do |t|
    t.integer "equipe_id", null: false
    t.integer "usuario_id", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.date "data_criacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.string "nome"
    t.datetime "data_inicio"
    t.datetime "data_fim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_equipes", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "equipe_id", null: false
    t.string "papel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipe_id"], name: "index_usuario_equipes_on_equipe_id"
    t.index ["usuario_id"], name: "index_usuario_equipes_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "user_git"
    t.string "email"
    t.string "senha"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "equipe_projetos", "equipes"
  add_foreign_key "equipe_projetos", "projetos"
  add_foreign_key "usuario_equipes", "equipes"
  add_foreign_key "usuario_equipes", "usuarios"
end
