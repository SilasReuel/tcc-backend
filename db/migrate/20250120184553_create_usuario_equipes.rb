class CreateUsuarioEquipes < ActiveRecord::Migration[8.0]
  def change
    create_table :usuario_equipes do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :equipe, null: false, foreign_key: true
      t.string :papel

      t.timestamps
    end
  end
end
