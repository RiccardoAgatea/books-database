# == Schema Information
#
# Table name: series_associations
#
#  id         :bigint           not null, primary key
#  position   :integer
#  series_id  :bigint
#  book_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_series_associations_on_book_id    (book_id)
#  index_series_associations_on_series_id  (series_id)
#
class SeriesAssociation < ApplicationRecord
  validates :position, presence: true

  belongs_to :book
  belongs_to :series
end
