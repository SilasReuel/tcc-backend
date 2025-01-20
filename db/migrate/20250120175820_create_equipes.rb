class CreateEquipes < ActiveRecord::Migration[8.0]
  def change
    create_table :equipes do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
