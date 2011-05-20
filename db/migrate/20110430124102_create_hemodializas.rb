class CreateHemodializas < ActiveRecord::Migration
  def self.up
    create_table :hemo_lunars do |t|
      t.date :data
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :hemo_lunars
  end
end
