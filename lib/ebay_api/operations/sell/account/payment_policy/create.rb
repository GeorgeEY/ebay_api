class EbayAPI
  scope :sell do
    scope :account do
      scope :payment_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/payment_policy/methods/createPaymentPolicy
        operation :create do
          option :data, proc(&:to_h) # TODO: add model to validate input

          path { "/" }
          http_method :post
          body { data }
        end
      end
    end
  end
end
