class Device < ActiveRecord::Base
has_many :carts
has_many :dashboards
belongs_to :location
has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/avatars/:style/missing.png"
validates_attachment_content_type :avatar, :content_type => /.*/ 

def add_device(device_id, current_user)
        current_item = current_user.carts.find_by(device_id: device_id)
        current_item = current_user.carts.build(device_id: device_id)
        current_item
   end

def self.find_searched_devices(params)
 self.where("name = ?", "#{params[:text]}")
end


end
