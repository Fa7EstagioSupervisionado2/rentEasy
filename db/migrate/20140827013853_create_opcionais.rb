class CreateOpcionais < ActiveRecord::Migration
  def change
    create_table :opcionais do |t|
      t.string :descricao
      t.string :nome
      t.float :valor
      t.integer :locadora_id

      t.timestamps
    end
  end
end
