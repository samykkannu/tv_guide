class AddShowtable < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do|t|
      t.string :name
      t.belongs_to :channel
      t.datetime :timing
      t.timestamps null: false
    end
  end
end
