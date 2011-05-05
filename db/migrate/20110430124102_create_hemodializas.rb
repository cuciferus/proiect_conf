class CreateHemodializas < ActiveRecord::Migration
  def self.up
    create_table :hemodializas do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :hemodializas
  end
end
