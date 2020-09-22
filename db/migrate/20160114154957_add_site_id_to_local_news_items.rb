class AddSiteIdToLocalNewsItems < ActiveRecord::Migration[4.2]
  def change
    add_reference :local_news_items, :site, index: true, foreign_key: true
  end
end
