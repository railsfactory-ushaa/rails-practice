class Sample < ActiveRecord::Base
 belongs_to :user
 validates :title, :presence=> true
 validates :title, :length=> { :minimum =>6 }
 has_attached_file :pic, :styles => 
   { :medium => "300x300>", :thumb => "100x100>" }
has_attached_file :attach  

end
