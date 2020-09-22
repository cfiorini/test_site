class AddDefaultTranslationToSites < ActiveRecord::Migration[4.2]
  def change
    add_column :sites, :default_translation_id, :integer
  end
end
