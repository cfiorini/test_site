class AddHeaderToSites < ActiveRecord::Migration
  def change
    add_column :sites, :header, :string
  end
end
