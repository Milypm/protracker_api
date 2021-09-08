require 'rails_helper'

RSpec.describe DevTask, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:project_task) }
  it { should validate_presence_of(:time) }
end
