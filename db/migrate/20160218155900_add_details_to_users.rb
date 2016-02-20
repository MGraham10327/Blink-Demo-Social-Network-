class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :string
    add_column :users, :school, :string
    add_column :users, :bio, :text
  end
end
