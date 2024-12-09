class Wallet < ApplicationRecord
  has_many :transactions
  has_many :debit_transactions
  has_many :credit_transactions
end
