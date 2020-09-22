class AddMapUrlToSites < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :map_url, :string
  end
end
