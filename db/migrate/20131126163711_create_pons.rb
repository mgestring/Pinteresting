class CreatePons < ActiveRecord::Migration
  def change
    create_table :pons do |t|
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
