# == Schema Information
#
# Table name: volumes
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Volume < ApplicationRecord
  validates :title, presence: true
end
