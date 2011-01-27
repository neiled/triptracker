class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  has_many :trips
  has_many :locations, :through => :trips
  attr_accessible :email, :password, :password_confirmation, :remember_me, :trips_attributes
  accepts_nested_attributes_for :trips

  before_validation :set_password

  def set_password
    unless password
      self.password = self.password_confirmation = random_password
    end
  end # set_password

  private

  def random_password(size = 8)
    chars = (('a'..'z').to_a + ('0'..'9').to_a) - %w(i o 0 1 l 0) 
    (1..size).collect{|a| chars[rand(chars.size)] }.join
  end
    


end
