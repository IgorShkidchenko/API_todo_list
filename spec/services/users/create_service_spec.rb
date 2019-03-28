require 'rails_helper'

RSpec.describe Users::CreateService do
  subject(:create_service_call) { described_class.call(params) }

  let(:attributes) { attributes_for(:user) }

  context 'when valid attributes' do
    let(:params) { attributes.merge(password_confirmation: attributes[:password]) }
    let(:result) { create_service_call }

    it { expect { create_service_call }.to change(User, :count).by(1) }
    it { expect(result.email).to eq attributes[:email] }
  end

  context 'when invalid attributes' do
    let(:params) { attributes.merge(password_confirmation: attributes[:password].succ) }

    it { expect { create_service_call }.to raise_error ActiveRecord::RecordInvalid }
  end
end
