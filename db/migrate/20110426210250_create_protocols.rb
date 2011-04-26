class CreateProtocols < ActiveRecord::Migration
  def self.up
    create_table :protocols do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :protocols
  end
end
