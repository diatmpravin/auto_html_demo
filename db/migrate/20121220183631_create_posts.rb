class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :about
      t.string :about_html
      t.string :url
      t.string :url_html

      t.timestamps
    end
  end
end
