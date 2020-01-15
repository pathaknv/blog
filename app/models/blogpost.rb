# == Schema Information
#
# Table name: blogposts
#
#  id             :bigint           not null, primary key
#  title          :string(255)
#  body           :string(255)
#  published_date :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint
#

class Blogpost < ApplicationRecord
  belongs_to :user
end
