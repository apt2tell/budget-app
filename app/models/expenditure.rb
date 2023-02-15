class Expenditure < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenditure_categories
  has_many :categories, through: :expenditure_categories

  validates :name, :amount, :categories, presence: true
  validates :amount, numericality: { greater_than: 0 }

  def grand_total
    categories.sum(:amount)
  end
end
