class Subscription < ApplicationRecord
    belongs_to :customer, foreign_key: 'customer_id'
    has_one :platform
    
    def self.search(value)
        if value
            where('billing_type LIKE ?', "%#{value}%")
        else
            where(nil)
        end
    end
end
