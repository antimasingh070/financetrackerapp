class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
  publishable_token: 'Tpk_14416f8bb13740b7a461e78bc078d790',secret_token: 'Tsk_8a1546094f4d4d8f82a45ab2db31b28a',
  endpoint: 'https://sandbox.iexapis.com/v1')

  client.price(ticker_symbol)
    end
end
