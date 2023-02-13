class Expenditure < ApplicationRecord
  belongs_to :user
  has_many :expenditure_categories
  has-many :categories, through: :expenditure_categories
end
