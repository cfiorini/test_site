class CreateConfs < ActiveRecord::Migration[4.2]
  def change
    create_table :confs do |t|
      t.text :keywords, null: false, default: ''

      t.timestamps null: false
    end
  end
end
