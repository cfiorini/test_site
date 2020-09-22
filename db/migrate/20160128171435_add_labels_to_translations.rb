class AddLabelsToTranslations < ActiveRecord::Migration[4.2]
  def change
  	add_column :translations, :intro_label, :string
  	add_column :translations, :services_label, :string
  	add_column :translations, :products_label, :string
  	add_column :translations, :news_label, :string
  	add_column :translations, :find_us_label, :string
  	add_column :translations, :lets_talk_label, :string
  	add_column :translations, :support_label, :string
  	add_column :translations, :site_name, :string
  end
end
