class CreateStocks < ActiveRecord::Migration[8.0]
  def change
    create_table :stocks do |t|
      t.string :identifier
      t.string :symbol
      t.timestamps
    end
  end
end
