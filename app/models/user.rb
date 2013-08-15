class User < ActiveRecord::Base
  has_secure_security_answer :case_sensitive => false
  validates :username, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :security_question, :presence => true
end

