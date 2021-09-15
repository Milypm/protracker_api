require 'rails_helper'

RSpec.describe "ProjectsTasks API", type: :request do
    # initialize test data
  let!(:project_tasks) { FactoryBot.create_list(:project_task, 12) }
  let(:project_task_id) { project_tasks.first.id }

  # Test suite for GET /todos
  describe 'GET /project_tasks' do
    # make HTTP get request before each example
    before { get '/project_tasks' }

    it 'returns project_tasks' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(12)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /todos/:id
  # describe 'GET/project_tasks/:id' do
  #   before { get "/project_tasks/#{project_task_id}" }

  #   context 'when the record exists' do
  #     it 'returns the project_task' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(project_id)
  #     end

  #     it 'returns status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end

  #   context 'when the record does not exist' do
  #     let(:project_task_id) { 100 }

  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end

  #     it 'returns a not found message' do
  #       expect(response.body).to match(/Couldn't find ProjectTask/)
  #     end
  #   end
  # end

  # # Test suite for POST /projects
  # describe 'POST/project_tasks' do
  #   # valid payload
  #   let(:valid_attributes) { { task: 'Create Navbar and Filter React components', assigned_to: 'Peter Morris' } }

  #   context 'when the request is valid' do
  #     before { post '/project_tasks', params: valid_attributes }

  #     it 'creates a project_task' do
  #       expect(json['task']).to eq('Create Navbar and Filter React components')
  #     end

  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end

  #   context 'when the request is invalid' do
  #     before { post '/project_tasks', params: { assigned_to: 'Tyler Borden' } }

  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end

  #     it 'returns a validation failure message' do
  #       expect(response.body)
  #         .to match(/Validation failed: Task can't be blank/)
  #     end
  #   end
  # end

  # # Test suite for PUT /projects/:id
  # describe 'PUT/project_tasks/:id' do
  #   let(:valid_attributes) { { task: 'Create Navbar React component' } }

  #   context 'when the record exists' do
  #     before { put "/project_tasks/#{project_task_id}", params: valid_attributes }

  #     it 'updates the record' do
  #       expect(response.body).to be_empty
  #     end

  #     it 'returns status code 204' do
  #       expect(response).to have_http_status(204)
  #     end
  #   end
  # end

  # # Test suite for DELETE /todos/:id
  # describe 'DELETE/project_tasks/:id' do
  #   before { delete "/project_tasks/#{project_task_id}" }

  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end
end
