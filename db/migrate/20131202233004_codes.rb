class Codes < ActiveRecord::Migration
  def change
     create_table "codes", :force => true do |t|

    t.string   "string"

    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
end
end
