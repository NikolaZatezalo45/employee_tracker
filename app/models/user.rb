class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.types
    %w(HrManagerUser ProjectManagerUser)
  end

  validates :email,:encrypted_password,:type, presence: true
  validates_uniqueness_of :email
end
