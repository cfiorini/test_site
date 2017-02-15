class AddSiteIdToLocalNewsItems < ActiveRecord::Migration
  def change
    add_reference :local_news_items, :site, index: true, foreign_key: true
  end
end
