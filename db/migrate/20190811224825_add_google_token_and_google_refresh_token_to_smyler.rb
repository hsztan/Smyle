class AddGoogleTokenAndGoogleRefreshTokenToSmyler < ActiveRecord::Migration[5.2]
  def change
    add_column :smylers, :google_token, :string
    add_column :smylers, :google_refresh_token, :string
  end
end
