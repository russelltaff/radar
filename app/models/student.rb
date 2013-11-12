class Student < User 
  attr_accessible :photo
  has_attached_file :photo, :styles => { 
    :medium => "300x300", 
    :thumb => "100x100",
    :square => "200x200"}
  has_attached_file :resume, :styles => { 
    :medium => "300x300", 
    :thumb => "100x100",
    :square => "200x200"}
end 