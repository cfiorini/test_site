class CreateNewsItems < ActiveRecord::Migration[4.2]
  def change
    create_table :news_items do |t|
      t.text :title
      t.date :date
      t.text :body

      t.timestamps null: false
    end
  end
end
