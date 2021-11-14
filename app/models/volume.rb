# == Schema Information
#
# Table name: volumes
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint
#  position   :integer
#
# Indexes
#
#  index_volumes_on_book_id  (book_id)
#
class Volume < ApplicationRecord
  validates :title, :position, presence: true

  belongs_to :book
end
