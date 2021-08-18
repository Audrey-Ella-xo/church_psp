class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :marriage_status, :string
    add_column :users, :dob, :date
  end
end
