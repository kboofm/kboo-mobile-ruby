class User < ActiveRecord::Base
  has_many :hosts
  has_many :programs, through: :hosts
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w[admin staff contributor listener banned]
  #sets new user to default role in private method
  before_create :set_default_role

  def admin?
    role == 'admin'
  end

  def staff?
    role == 'staff'
  end  

private
  def set_default_role
    if self.role != 'admin' && self.role != 'staff'
      self.role = 'listener'
    end  
  end 
end
