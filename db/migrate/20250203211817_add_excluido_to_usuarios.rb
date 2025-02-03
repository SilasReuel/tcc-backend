class AddExcluidoToUsuarios < ActiveRecord::Migration[8.0]
  def change
    add_column :usuarios, :excluido, :boolean, default: false, null: false
  end
end
