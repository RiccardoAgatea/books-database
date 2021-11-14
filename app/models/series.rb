# == Schema Information
#
# Table name: series
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Series < ApplicationRecord
  validates :name, presence: true

  has_many :series_associations, dependent: :destroy
  has_many :books, through: :series_associations
end
