class Contract
  def fetch_price
    raise NotImplementedError
  end

  def fetch_prices
    raise NotImplementedError
  end

  def fetch_price_all
    raise NotImplementedError
  end
end
