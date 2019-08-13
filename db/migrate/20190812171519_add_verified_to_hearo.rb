class AddVerifiedToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :verified?, :boolean, default: false
  end
end
