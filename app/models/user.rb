class User < ApplicationRecord
  has_many :expenditures, dependent: :destroy
  has_many :categories, dependent: :destroy

  has_one_attached :avatar do |attachable| 
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  validates :name, :email, presence: true
end
