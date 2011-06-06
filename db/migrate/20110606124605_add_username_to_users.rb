class AddUsernameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :nume, :string
    add_column :users, :prenume, :string
  end

  def self.down
    remove_column :users, :prenume
    remove_column :users, :nume
    remove_column :users, :username
  end
end
