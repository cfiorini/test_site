class AddImageToLocalNewsItems < ActiveRecord::Migration
  def change
    add_column :local_news_items, :image, :string
  end
end
