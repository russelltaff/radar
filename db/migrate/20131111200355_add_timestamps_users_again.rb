class AddTimestampsUsersAgain < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.timestamps 
    end 
  end
end
