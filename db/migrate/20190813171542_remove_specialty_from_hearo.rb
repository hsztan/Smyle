class RemoveSpecialtyFromHearo < ActiveRecord::Migration[5.2]
  def change
    remove_column :hearos, :specialty
  end
end
