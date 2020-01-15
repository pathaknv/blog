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
  has_many :blogposts
end
