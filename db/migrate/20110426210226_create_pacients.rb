class CreatePacients < ActiveRecord::Migration
  def self.up
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      t.integer :cnp
      t.date :data_integrarii

      t.timestamps
    end
  end

  def self.down
    drop_table :pacients
  end
end
