class CreateEquipeProjetos < ActiveRecord::Migration[8.0]
  def change
    create_table :equipe_projetos do |t|
      t.references :equipe, null: false, foreign_key: true
      t.references :projeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
