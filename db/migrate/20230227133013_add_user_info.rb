class AddUserInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :first_name
    add_column :last_name
    add_column :address
    add_colums :bio, :text
  end
end
