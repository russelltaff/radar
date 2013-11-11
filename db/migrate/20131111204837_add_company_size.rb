class AddCompanySize < ActiveRecord::Migration
  def change
    add_column :users, :company_size, :string
  end
end
