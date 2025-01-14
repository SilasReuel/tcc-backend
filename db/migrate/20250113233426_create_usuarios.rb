class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :user_git
      t.string :email
      t.string :senha
      t.string :nome

      t.timestamps
    end
  end
end
