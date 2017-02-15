class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.belongs_to :site, null: false
      t.belongs_to :language, null: false
      t.index [:site_id, :language_id], unique: true
      t.timestamps null: false
    end
  end
end
