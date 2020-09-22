class CreateOffices < ActiveRecord::Migration[4.2]
  def change
    create_table :offices do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :x
      t.string :y

      t.timestamps null: false
    end
  end
end
