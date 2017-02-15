class AddHqToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :hq, :boolean, null: false, default: false
  end
end
