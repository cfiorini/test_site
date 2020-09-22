class AddKeywordsToSites < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :keywords, :text
  end
end
