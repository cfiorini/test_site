class AddTextLinksToTranslations < ActiveRecord::Migration[4.2]
  def change
  	add_column :translations, :products_link_label, :string
  	add_column :translations, :services_link_label, :string
  end
end
