class CreateLocalNewsItems < ActiveRecord::Migration
  def change
    create_table :local_news_items do |t|
      t.text :title
      t.date :date
      t.text :body

      t.timestamps null: false
    end
  end
end
