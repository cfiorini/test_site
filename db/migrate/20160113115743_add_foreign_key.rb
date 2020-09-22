class AddForeignKey < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key :translations, :sites
    add_foreign_key :translations, :languages
  end
end
