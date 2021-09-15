require 'rails_helper'

RSpec.describe "DevTasks API", type: :request do
    # initialize test data
  let!(:dev_tasks) { FactoryBot.create_list(:dev_task, 12) }
  let(:dev_task_id) { dev_tasks.first.id }

  # Test suite for GET /dev_tasks
  describe 'GET /dev_tasks' do
    # make HTTP get request before each example
    before { get '/dev_tasks' }

    it 'returns dev_tasks' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(12)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /dev_tasks/:id
  # describe 'GET/dev_tasks/:id' do
  #   before { get "/dev_tasks/#{dev_task_id}" }

  #   context 'when the record exists' do
  #     it 'returns the dev_task' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(dev_id)
  #     end

  #     it 'returns status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end

  #   context 'when the record does not exist' do
  #     let(:dev_task_id) { 100 }

  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end

  #     it 'returns a not found message' do
  #       expect(response.body).to match(/Couldn't find DevTask/)
  #     end
  #   end
  # end

  # # Test suite for POST /dev_tasks
  # describe 'POST/dev_tasks' do
  #   # valid payload
  #   let(:valid_attributes) { { notes: 'Navbar and Filter components created based on last requirement', time: '190' } }

  #   context 'when the request is valid' do
  #     before { post '/dev_tasks', params: valid_attributes }

  #     it 'creates a dev_task' do
  #       expect(json['notes']).to eq('Navbar and Filter components created based on last requirement')
  #     end

  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end

  #   context 'when the request is invalid' do
  #     before { post '/dev_tasks', params: { time: '183' } }

  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end

  #     it 'returns a validation failure message' do
  #       expect(response.body)
  #         .to match(/Validation failed: Time can't be blank/)
  #     end
  #   end
  # end

  # # Test suite for PUT /dev_tasks/:id
  # describe 'PUT/dev_tasks/:id' do
  #   let(:valid_attributes) { { time: '200' } }

  #   context 'when the record exists' do
  #     before { put "/dev_tasks/#{dev_task_id}", params: valid_attributes }

  #     it 'updates the record' do
  #       expect(response.body).to be_empty
  #     end

  #     it 'returns status code 204' do
  #       expect(response).to have_http_status(204)
  #     end
  #   end
  # end

  # # Test suite for DELETE /dev_tasks/:id
  # describe 'DELETE/dev_tasks/:id' do
  #   before { delete "/dev_tasks/#{dev_task_id}" }

  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end
end
