class Cart < ActiveRecord::Base
belongs_to :device
has_many :orders
has_many :dashboards
after_initialize :set_default_status
 def set_default_status
    self.status ||= "pending"
  end
 
end
