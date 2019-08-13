class AddGenderIdToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :gender_id, :integer
  end
end
