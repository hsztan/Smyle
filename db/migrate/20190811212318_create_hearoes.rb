class CreateHearoes < ActiveRecord::Migration[5.2]
  def change
    create_table :hearoes do |t|
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :password_digest
      t.string :verification_code
      t.string :specialty
      t.datetime :dob
      t.string :therapist_code

      t.timestamps
    end
  end
end
