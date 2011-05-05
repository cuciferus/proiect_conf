class CreateBcrs < ActiveRecord::Migration
  def self.up
    create_table :bcrs do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :bcrs
  end
end
