class AddFullnameGenreAboutCountryLocationCoordinatesUsernameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :genre, :string
    add_column :users, :about, :text
    add_column :users, :country, :string
    add_column :users, :location, :string
    add_column :users, :coordinates, :string
    add_column :users, :username, :string
  end
end
