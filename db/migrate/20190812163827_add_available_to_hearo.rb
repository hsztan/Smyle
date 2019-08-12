class AddAvailableToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :available, :boolean
  end
end
