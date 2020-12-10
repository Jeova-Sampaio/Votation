class CreateVotations < ActiveRecord::Migration[5.2]
  def change
    create_table :votations do |t|
      t.string :name
      t.string :cpf
      t.string :sector
      t.string :registration
      t.integer :birthday
      t.string :servidorsesec
      t.string :servidorgmf
      t.string :servidordc

      t.timestamps
    end
  end
end
