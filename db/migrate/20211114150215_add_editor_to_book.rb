class AddEditorToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :editor, index: true
  end
end
