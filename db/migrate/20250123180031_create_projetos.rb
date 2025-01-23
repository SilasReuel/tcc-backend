class CreateProjetos < ActiveRecord::Migration[8.0]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.text :descricao
      t.date :data_criacao

      t.timestamps
    end
  end
end
