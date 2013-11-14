module PostsHelper

   def type_of_position(post_obj)
      case post_obj.position_type
      when "Product Manager"
         @job_class = "product_man"
      when "Entrepreneur"
         @job_class = "entrep"
      when "Digital Marketer"
       
      when "Product Designer"
         @job_class = "product_des"
      when "Full-Stack Developer"
         @job_class = "full_dev"
      when "Back-end Developer"
         @job_class = "back_dev"
      when "Front-end Developer"
         @job_class = "front_dev"
      else
         @job_class = "" 
      end
   end

   def type_of_post(post_obj)
      if post_obj.for_hire == true
         @type_class = "for_hire"
      else
         @type_class = "hiring"
      end
   end
end
