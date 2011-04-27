class AddCentruToProtocol < ActiveRecord::Migration
  def self.up
    add_column :protocols, :centru, :string
  end

  def self.down
    remove_column :protocols, :centru
  end
end
