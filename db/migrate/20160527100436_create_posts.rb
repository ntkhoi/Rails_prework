class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text :content
      t.datetime :created_date
      t.datetime :published_date

      t.timestamps null: false
    end
  end
end
