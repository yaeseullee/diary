class CreateBetweens < ActiveRecord::Migration
  def change
    create_table :betweens do |t|
      t.string :title
      t.text :text
      t.string :photo

      t.timestamps null: false
    end
  end
end
