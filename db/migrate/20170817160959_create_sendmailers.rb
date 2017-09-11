class CreateSendmailers < ActiveRecord::Migration[5.1]
  def change
    create_table :sendmailers do |t|
      t.string :name
      t.string :email
      t.date :birth_date

      t.timestamps
    end
  end
end
