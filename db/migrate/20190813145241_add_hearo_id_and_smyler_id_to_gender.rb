class AddHearoIdAndSmylerIdToGender < ActiveRecord::Migration[5.2]
  def change
    add_column :genders, :hearo_id, :integer
    add_column :genders, :smyler_id, :integer
  end
end
