class CreateListEdits < ActiveRecord::Migration[5.1]
  def up
    create_table :list_edits do |t|
      t.references :admin_user
      t.references :helper_list
      t.string :summary
      t.timestamps
    end
    add_index :list_edits, ["admin_user_id", "helper_list_id"]
  end

  def down
    drop_table :list_edits
  end
end
