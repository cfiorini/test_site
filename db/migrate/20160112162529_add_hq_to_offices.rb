class AddHqToOffices < ActiveRecord::Migration[4.2]
  def change
    add_column :offices, :hq, :boolean, null: false, default: false
  end
end
