class CreateHemoSemestrials < ActiveRecord::Migration
  def self.up
    create_table :hemo_semestrials do |t|
      t.date :data
      t.float :aghbs
      t.float :achbs
      t.float :achcv
      t.float :achiv
      t.float :pth
      t.references :pacient

      t.timestamps
    end
  end

  def self.down
    drop_table :hemo_semestrials
  end
end
