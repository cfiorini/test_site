class AddSectionsToTranslations < ActiveRecord::Migration[4.2]
  def change
    add_column :translations, :intro, :text
    add_column :translations, :services, :text
    add_column :translations, :products, :text
    add_column :translations, :find_us, :text
    add_column :translations, :lets_talk, :text
    add_column :translations, :support, :text
  end
end
