class AddEmployeeNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Employee_Name, :string
  end
end
