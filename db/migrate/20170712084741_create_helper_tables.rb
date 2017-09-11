class CreateHelperTables < ActiveRecord::Migration[5.1]
  def up
    create_table :helper_tables do |t|
      t.string "name"
      t.integer "position"
      t.integer "counter"
      t.timestamps
    end
  end

  def down
    drop_table :helper_tables
  end
end
