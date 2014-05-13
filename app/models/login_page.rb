class LoginPage < ActiveRecord::Base
  scope :visible, lambda { where(:visible=>true)}
  scope :invisible, lambda { where(:visible=>false)}
  scope :sorted, lambda {order("login_pages.position ASC")}
  scope :newest_first, lambda {order("login_pages.created_at DESC")}
  
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  FORBIDDEN_USERNAMES = ['littlebopeep','humptydumpty','marymary']
  validates_presence_of :name, :user_id,:password,:Age,:gender,:country
   
  validates :name, :length => { :within => 8..25 },
                       :uniqueness => true
  validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => EMAIL_REGEX,
                    :confirmation => true
  validates :user_id, :numericality => true  
  validates :mobile, :numericality => true
end
