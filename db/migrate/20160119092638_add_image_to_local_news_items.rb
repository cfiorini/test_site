class AddImageToLocalNewsItems < ActiveRecord::Migration[4.2]
  def change
    add_column :local_news_items, :image, :string
  end
end
