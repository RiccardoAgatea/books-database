# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string
#  surname    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  validates :name, :surname, presence: true

  has_and_belongs_to_many :books

  def full_name
    [name, surname].join ' '
  end
end
