class CreateSmylers < ActiveRecord::Migration[5.2]
  def change
    create_table :smylers do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :name
      t.datetime :dob

      t.timestamps
    end
  end
end
