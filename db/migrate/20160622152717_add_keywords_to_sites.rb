class AddKeywordsToSites < ActiveRecord::Migration
  def change
    add_column :sites, :keywords, :text
  end
end
