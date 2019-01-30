class Api::V1::CustomersController < ApplicationController

    def customers
      customers = Customer.all
      render json: customers.as_json
    end
  
    def index
      customers = Customer.all
      render json: customers.as_json
    end
  
    def search
      # EXTRA CREDIT: Implement searching for email, product, and subscription type
    end
  end
  