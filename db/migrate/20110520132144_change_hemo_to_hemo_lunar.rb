class ChangeHemoToHemoLunar < ActiveRecord::Migration
  def self.up
    rename_table :hemo_lunars, :hemo_lunars
  end

  def self.down
    rename_table :hemo_lunars, :hemo_lunars
  end
end
