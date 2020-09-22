class AddHeaderToSites < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :header, :string
  end
end
