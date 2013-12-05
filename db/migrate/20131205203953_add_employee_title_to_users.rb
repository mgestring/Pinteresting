class AddEmployeeTitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Employee_Title, :string
  end
end
