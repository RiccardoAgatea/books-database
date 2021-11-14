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
require 'rails_helper'

RSpec.describe Book, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
