class AddSpecialtyIdToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :specialty_id, :integer
  end
end
