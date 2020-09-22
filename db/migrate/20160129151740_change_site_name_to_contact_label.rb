class ChangeSiteNameToContactLabel < ActiveRecord::Migration[4.2]
  def change
    rename_column :translations, :site_name, :contacts_label
  end
end
