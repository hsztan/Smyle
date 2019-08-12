class AddVerifiedToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :verified?, :boolean
  end
end
