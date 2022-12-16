class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.string :title
      t.string :url
      t.string :source
      t.integer :counter

      t.timestamps
    end
  end
end