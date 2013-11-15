class Student < User 
  has_attached_file :resume
  has_attached_file :photo 

  attr_accessible :resume
  attr_accessible :photo
end 