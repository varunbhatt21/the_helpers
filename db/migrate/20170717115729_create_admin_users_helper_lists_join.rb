class CreateAdminUsersHelperListsJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users_lists, :id => false do |t|
      t.integer "admin_user_id"
      t.integer "helper_list_id"
    end
    add_index :admin_users_lists, ["admin_user_id", "helper_list_id"]
  end

  def down
    drop_table :admin_users_lists
  end
end
