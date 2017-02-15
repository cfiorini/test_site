class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :translations, :sites
    add_foreign_key :translations, :languages
  end
end
