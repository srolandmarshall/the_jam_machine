# spec/controllers/jam_controller_spec.rb

require 'rails_helper'

RSpec.describe JamController, type: :controller do
  describe 'POST #create' do
    let(:valid_params) do
      {
        input: 'Play a 3/4 rhythm with a funk bass groove over it in the key of A# Minor'
      }
    end

    let(:invalid_params) do
      {
        input: 'Invalid input'
      }
    end

    context 'with valid input' do
      it 'returns a success response' do
        post :create, params: valid_params
        expect(response).to be_successful
      end

      # Add more tests for successful input processing, music pattern generation, etc.
    end

    context 'with invalid input' do
      it 'returns an error response' do
        post :create, params: invalid_params
        expect(response).to have_http_status(:unprocessable_entity)
      end

      # Add more tests for error handling, such as providing helpful error messages, etc.
    end
  end
end
