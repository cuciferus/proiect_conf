class CreateDiabets < ActiveRecord::Migration
  def self.up
    create_table :diabets do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :diabets
  end
end
