class AddReadMoreToNews < ActiveRecord::Migration[4.2]
  def change
    add_column :translations, :read_more, :string
  end
end
