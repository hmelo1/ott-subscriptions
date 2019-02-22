require 'rails_helper'


describe Api::V1::CustomersController do
    it 'gets a list of subscribers' do
        get :index
            json = JSON.parse(response.body)

            expect(response).to be_success
    end

    it 'gets a list of searched subscribers' do
        get :search, params: {phrase: "chris"}
            json = JSON.parse(response.body)

            expect(response).to be_success
    end
end