class AddUserReferenceToBlogpost < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogposts, :user, foreign_key: true
  end
end
