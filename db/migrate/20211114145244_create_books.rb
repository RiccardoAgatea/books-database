class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.integer :print_year

      t.timestamps
    end
  end
end
