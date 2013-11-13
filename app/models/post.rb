class Post < ActiveRecord::Base
  belongs_to :user
  #has_and_belongs_to_many :skills 
  acts_as_taggable 
  acts_as_taggable_on :skill_tags 
  # scope :by_join_date, order("created_at DESC")
end
