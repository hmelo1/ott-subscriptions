class Customer < ApplicationRecord
    has_one :subscription
    has_one :platform, through: :subscription

    def self.search(value)
        if value
            joins(:subscription, :platform)
            .select("customers.*,
                    subscriptions.subscribed_at as subscribed_at,
                    subscriptions.billing_type as billing_type,
                    platforms.platform as platform,
                    platforms.product as product")
            .where("email LIKE ? OR product LIKE ? OR subscriptions.billing_type LIKE ?",
                    "%#{value}%", "%#{value}%", "%#{value}%")
        else
            where(nil)
        end
    end
end
