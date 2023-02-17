class RenameUserIdToAuthorIdInExpenditures < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenditures, :user_id, :author_id
  end
end
