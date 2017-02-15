class AddMapUrlToSites < ActiveRecord::Migration
  def change
    add_column :sites, :map_url, :string
  end
end
