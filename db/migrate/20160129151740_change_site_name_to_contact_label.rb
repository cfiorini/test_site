class ChangeSiteNameToContactLabel < ActiveRecord::Migration
  def change
    rename_column :translations, :site_name, :contacts_label
  end
end
