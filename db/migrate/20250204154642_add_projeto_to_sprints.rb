class AddProjetoToSprints < ActiveRecord::Migration[8.0]
  def change
    add_reference :sprints, :projeto, foreign_key: true
  end
end
