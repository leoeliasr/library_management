class CreateFuncionarios < ActiveRecord::Migration[7.1]
  def change
    create_table :funcionarios do |t|
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
