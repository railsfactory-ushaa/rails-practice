class Dashboard < ActiveRecord::Base
belongs_to :user
belongs_to :order
belongs_to :device
belongs_to :cart
end
