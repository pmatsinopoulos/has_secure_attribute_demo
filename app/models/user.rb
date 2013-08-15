class User < ActiveRecord::Base
  has_secure_security_answer
  validates :username, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :security_question, :presence => true
end

