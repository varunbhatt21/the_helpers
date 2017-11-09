class CreateHelperLists < ActiveRecord::Migration[5.1]

  def up
    create_table :helper_lists do |t|
      t.integer "helper_table_id"
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "company_name", :limit => 50
        t.integer "position"
      t.string "mobile", :limit => 50
      t.string "address", :limit => 200
      t.float "rating"
      t.timestamps
    end
    add_index("helper_lists", "helper_table_id")
  end

  def down
    drop_table :helper_lists
  end

end
