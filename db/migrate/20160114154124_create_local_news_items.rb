class CreateLocalNewsItems < ActiveRecord::Migration[4.2]
  def change
    create_table :local_news_items do |t|
      t.text :title
      t.date :date
      t.text :body

      t.timestamps null: false
    end
  end
end
