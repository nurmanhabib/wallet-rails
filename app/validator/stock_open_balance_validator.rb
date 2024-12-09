# frozen_string_literal: true

class StockOpenBalanceValidator
  include ActiveModel::Validations

  attr_accessor :identifier, :balance

  validates :identifier, presence: true
  validates :balance, presence: true, numericality: {greater_than: 0}

  def initialize(params)
    @identifier = params[:identifier]
    @balance = params[:balance]
  end
end
