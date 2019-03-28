require 'rails_helper'

RSpec.describe ResourceFinderService do
  subject(:resource_finder_service) { described_class.call(controller_name, params) }

  let(:resource) { create(:project) }
  let(:resource_instance_name) { resource.class.to_s.downcase }
  let(:controller_name) { 'projects' }

  context 'when resource exists' do
    let(:params) { { id: resource.id } }

    it { expect(resource_finder_service.record).to eq resource }
    it { expect(resource_finder_service.name).to eq resource_instance_name }
  end

  context 'when resource does not exists' do
    let(:params) { { id: resource.id.succ } }

    it { expect { resource_finder_service }.to raise_error ActiveRecord::RecordNotFound }
  end
end
