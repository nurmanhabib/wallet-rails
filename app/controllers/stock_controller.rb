# frozen_string_literal: true

class StockController < ApplicationController
  def top_up_balance
    validator = StockOpenBalanceValidator.new(params)

    if validator.invalid?
      render json: { errors: validator.errors }, status: :unprocessable_entity
    else
      render json: params
    end
  end
end
