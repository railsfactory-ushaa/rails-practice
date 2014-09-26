class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

belongs_to :role
has_many :carts
has_many :orders
has_many :dashboards

after_initialize :set_default_role, :if => :new_record?
 def set_default_role
    self.role_id ||= 3
  end

def self.find_searched_users(params)
 self.where("first_name = ?", "#{params[:text]}")
end

end
