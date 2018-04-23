class AddAvatarsToUsers < ActiveRecord::Migration[5.1]
  
  def self.up
    change_table :users do |t|
      t.column :avatar, :string
    end
  end

  def self.down
      remove_column :users, :avatar
  end

end