records = JSON.parse(File.read(Rails.root.join("sample_data.json")))

records["RECORDS"].each do |record|
    Customer.create!(
        email: record["email"],
        city: record["city"],
        state: record["state"],
        country: record["country"]
    )
    Subscription.create!(
        subscribed_at: record["subscribed_at"],
        billing_type: record["billing_type"],
        customer_id: Customer.last.id
    )
    Platform.create!(
        platform: record["platform"],
        product: record["product_name"],
        subscription_id: Subscription.last.id
    )
end

SELECT customers.*, 
subscriptions.subscribed_at as subscribed_at, 
subscriptions.billing_type as billing_type, 
platform.platform as platform, 
platform.product_name as product 
FROM "customers" INNER JOIN "subscriptions" ON "subscriptions"."customer_id" = "customers"."id" INNER JOIN "subscriptions" "subscriptions_customers_join" ON "subscriptions_customers_join"."customer_id" = "customers"."id" INNER JOIN "platforms" ON "platforms"."subscription_id" = "subscriptions_customers_join"."id"