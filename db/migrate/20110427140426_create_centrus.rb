class CreateCentrus < ActiveRecord::Migration
  def self.up
    create_table :centrus do |t|
      t.string :nume
      t.references :protocol

      t.timestamps
    end
  end

  def self.down
    drop_table :centrus
  end
end
