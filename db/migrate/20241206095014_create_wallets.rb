class CreateWallets < ActiveRecord::Migration[8.0]
  def change
    create_table :wallets do |t|
      t.references :entity, :null => false, polymorphic: true
      t.string :identifier, :null => false
      t.decimal :balance, default: 0.0, precision: 10, scale: 2
      t.timestamps
    end
  end
end
