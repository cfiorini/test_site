class AddTextLinksToTranslations < ActiveRecord::Migration
  def change
  	add_column :translations, :products_link_label, :string
  	add_column :translations, :services_link_label, :string
  end
end
