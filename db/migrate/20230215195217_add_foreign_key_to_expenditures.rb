class AddForeignKeyToExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :expenditures, :users, column: :author_id
  end
end
