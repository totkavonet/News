class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  belongs_to :role
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'Maker' if role.nil?
  end

  def admin?
    role.name == 'Admin'
  end

  def maker?
    role.name == 'Maker'
  end

  def reader?
    role.name == 'Reader'
  end


end
