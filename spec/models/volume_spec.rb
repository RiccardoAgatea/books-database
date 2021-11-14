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
require 'rails_helper'

RSpec.describe Volume, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
