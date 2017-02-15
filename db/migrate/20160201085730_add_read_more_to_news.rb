class AddReadMoreToNews < ActiveRecord::Migration
  def change
    add_column :translations, :read_more, :string
  end
end
