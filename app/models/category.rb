class Category < ApplicationRecord
  belongs_to :user
  has_many :expenditure_categories
  has_many :expenditures, through: :expenditure_categories
end
