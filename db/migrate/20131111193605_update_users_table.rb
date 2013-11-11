class UpdateUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :company_type, :string
  end
end
