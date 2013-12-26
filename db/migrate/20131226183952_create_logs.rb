class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :company_name
      t.string :individual_name
      t.string :email
      t.datetime :date_time
      t.string :ip
    end
  end
end
