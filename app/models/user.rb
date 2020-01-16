# == Schema Information
#
# Table name: users
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  email         :string(255)
#  mobile_number :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord
  searchkick

  has_many :blogposts

  def search_data
    {
      name: name,
      email: email,
      total_blogposts: blogposts.count,
      last_published_blogpost_date: last_published_blogpost_date
    }
  end

  def last_published_blogpost_date
    blogposts.order(published_date: :desc).first.try(:published_date)
  end
end
