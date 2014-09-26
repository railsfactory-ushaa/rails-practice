class Order < ActiveRecord::Base
belongs_to :cart
belongs_to :user
has_many :dashboards
has_many :order_transactions
belongs_to :order_status
has_one :schedule
  
  attr_accessor :card_number, :card_verification
  

  
  
 
end
