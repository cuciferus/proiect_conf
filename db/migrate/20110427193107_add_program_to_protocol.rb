class AddProgramToProtocol < ActiveRecord::Migration
  def self.up
    add_column :protocols, :program, :string
  end

  def self.down
    remove_column :protocols, :program
  end
end
