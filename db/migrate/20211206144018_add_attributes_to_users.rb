class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :birthday, :date
    add_column :users, :phone, :string
  end
end
