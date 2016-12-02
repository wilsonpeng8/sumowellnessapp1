class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :location, :string
    add_column :users, :notes, :text
  end
end
