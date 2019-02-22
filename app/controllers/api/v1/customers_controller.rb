class Api::V1::CustomersController < ApplicationController
    def index
      customers = Customer.page(page_count).per(per_page).joins(:subscription, :platform)
                          .select("customers.*,
                                  subscriptions.subscribed_at as subscribed_at,
                                  subscriptions.billing_type as billing_type,
                                  platforms.platform as platform,
                                  platforms.product as product")
      render json: customers.as_json
    end
  
    def search
      search_term = params[:phrase]

      customers = Customer.page(page_count).per(per_page).search(search_term)
      render json: customers.as_json
    end

    private

    def page_count
      @page ||= params[:page] || 1
    end

    def per_page
      @per_page ||= params[:per_page] || 20
    end
  end
  