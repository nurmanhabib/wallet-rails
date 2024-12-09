class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.references :wallet, null: false
      t.string :type, null: false
      t.string :status, null: false, default: "pending"
      t.decimal :balance, default: 0.0, precision: 10, scale: 2
      t.decimal :price, default: 0.0, precision: 10, scale: 2
      t.decimal :end_balance, default: 0.0, precision: 10, scale: 2
      t.timestamps
    end
  end
end
