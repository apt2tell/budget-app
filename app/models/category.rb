class Category < ApplicationRecord
  belongs_to :user
  has_many :expenditure_categories
  has_many :expenditures, through: :expenditure_categories

  has_one_attached :icon

  validates :name, :icon, presence: true

  def total_amount
    expenditures.sum(:amount)
  end
end
