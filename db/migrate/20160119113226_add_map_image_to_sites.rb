class AddMapImageToSites < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :map_image, :string
  end
end
