class AddVolumesToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :volumes, :book, index: true
    add_column :volumes, :position, :integer
  end
end
