class Post < ActiveRecord::Base
  
  belongs_to :user

  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2}
  validates :title, :uniqueness => { :message => "already taken"}
  has_many :comments, :dependent => :destroy
end
