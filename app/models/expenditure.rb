class Expenditure < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :expenditure_categories
  has-many :categories, through: :expenditure_categories

  validates :name, :amount, :categories, presence: true
  validates :amount, pnumericality: { greater_than: 0 }
end
