class AddImageToSmyler < ActiveRecord::Migration[5.2]
  def change
    add_column :smylers, :image, :string
  end
end
