class AddGoogleTokenAndGoogleRefreshTokenToHearo < ActiveRecord::Migration[5.2]
  def change
    add_column :hearos, :google_token, :string
    add_column :hearos, :google_refresh_token, :string
  end
end
