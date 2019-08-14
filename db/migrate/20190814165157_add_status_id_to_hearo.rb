class AddStatusIdToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :status_id, :integer, default: 1
  end
end
