class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :expenditures, dependent: :destroy
  has_many :categories, dependent: :destroy

  has_one_attached :image

  validates :name, :email, presence: true
end
