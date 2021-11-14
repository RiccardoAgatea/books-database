class CreateSeriesAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :series_associations do |t|
      t.integer :position
      t.belongs_to :series
      t.belongs_to :book

      t.timestamps
    end
  end
end
