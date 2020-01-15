class CreateBlogposts < ActiveRecord::Migration[5.2]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :body
      t.datetime :published_date
      t.timestamps
    end
  end
end
