class PostsSkills < ActiveRecord::Migration
  def change
    create_table :posts_skills do |t|
      t.belongs_to :post, null: false
      t.belongs_to :skill, null: false
    end
    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE posts_skills
          ADD CONSTRAINT fk_posts
          FOREIGN KEY (post_id)
          REFERENCES posts(id),
          ADD CONSTRAINT fk_skills
          FOREIGN KEY (skill_id)
          REFERENCES skills(id)
        SQL
      end
    end
  end
end
