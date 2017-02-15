class AddDefaultTranslationToSites < ActiveRecord::Migration
  def change
    add_column :sites, :default_translation_id, :integer
  end
end
