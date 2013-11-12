class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, null: false, index: true
      t.boolean :for_hire
      t.text :description, null: false
      t.string :position_type, null: false

      t.timestamps
    end
    #table posts has a foreign key of user_id for posts/users
    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE posts
          ADD CONSTRAINT fk_posts_users
          FOREIGN KEY (user_id)
          REFERENCES users(id)
        SQL
      end
    end
  end
end
