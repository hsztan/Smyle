class AddEmailToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :email, :string
  end
end
