# == Schema Information
#
# Table name: lanes
#
#  id         :bigint(8)        not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lane < ApplicationRecord
  # has_many :tasks, dependent: :destroy
end
