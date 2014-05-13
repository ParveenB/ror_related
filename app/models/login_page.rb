class LoginPage < ActiveRecord::Base
  scope :visible, lambda { where(:visible=>true)}
  scope :invisible, lambda { where(:visible=>false)}
  scope :sorted, lambda {order("login_pages.position ASC")}
  scope :newest_first, lambda {order("login_pages.created_at DESC")}
  validates_presence_of :name, :user_id,:password 
end
