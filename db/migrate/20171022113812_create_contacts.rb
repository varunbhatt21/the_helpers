class CreateContacts < ActiveRecord::Migration[5.1]

  def up
    create_table :contacts do |t|

      t.column "fname", :string , :limit => 50
      t.column "lname", :string , :limit => 50
      t.string "description", :string ,:limit => 500 
      t.date "cdate"
      t.string "cemail", :default => "", :null => false
      t.string "cmobile",:limit => 12
      t.string "cstatus"
      t.integer "cposition"

      t.timestamps
    end
  end

  def down
    drop_table :contacts
  end

end
