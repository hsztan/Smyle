class AddGenderIdToSmyler < ActiveRecord::Migration[5.2]
  def change
    add_column :smylers, :gender_id, :integer
  end
end
