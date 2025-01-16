class CreateSprints < ActiveRecord::Migration[8.0]
  def change
    create_table :sprints do |t|
      t.string :nome
      t.datetime :data_inicio
      t.datetime :data_fim

      t.timestamps
    end
  end
end
