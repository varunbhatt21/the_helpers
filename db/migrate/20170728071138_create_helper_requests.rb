
class CreateHelperRequests < ActiveRecord::Migration[5.1]
  def up
    create_table :helper_requests do |t|
      t.column "name", :string , :limit => 50
      t.string "service", :string , :limit =>50
      t.string "email", :default => "", :null=>false
      t.string "address", :limit => 300
      t.date "date"
      t.string "helper"
      t.string "email", :default => "", :null => false
      t.string "mobile",:limit => 12
      t.string "time" , :limit => 50
      t.string "Status"
      t.integer "position"

      t.timestamps
    end
  end

  def down
    drop_table :helper_requests
  end
end
