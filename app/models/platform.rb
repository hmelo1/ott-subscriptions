class Platform < ApplicationRecord
    belongs_to :subscription, foreign_key: 'subscription_id'

    def self.search(value)
        if value
            where('product LIKE ?', "%#{value}%")
        else
            where(nil)
        end
    end
end
