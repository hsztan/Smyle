class AddUidToSmyler < ActiveRecord::Migration[5.2]
  def change
    add_column :smylers, :uid, :integer
  end
end
