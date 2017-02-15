class AddMapImageToSites < ActiveRecord::Migration
  def change
    add_column :sites, :map_image, :string
  end
end
