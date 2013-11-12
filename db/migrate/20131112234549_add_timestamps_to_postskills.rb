class AddTimestampsToPostskills < ActiveRecord::Migration
  def change
    change_table :posts_skills do |t|
      t.timestamps 
    end
  end
end
