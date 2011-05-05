class CreateCapds < ActiveRecord::Migration
  def self.up
    create_table :capds do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :capds
  end
end
