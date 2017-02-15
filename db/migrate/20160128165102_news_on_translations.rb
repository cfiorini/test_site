class NewsOnTranslations < ActiveRecord::Migration
  
  def up
  	LocalNewsItem.delete_all
  	remove_column :local_news_items, :site_id
  	add_column :local_news_items, :translation_id, :integer
  end

  def down
  	add_column :local_news_items, :site_id, :integer
  	remove_column :local_news_items, :translation_id
  end
end
