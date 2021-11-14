# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  title      :string
#  price      :decimal(5, 2)
#  print_year :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  editor_id  :bigint
#
# Indexes
#
#  index_books_on_editor_id  (editor_id)
#
class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :editor
  has_and_belongs_to_many :authors
end
