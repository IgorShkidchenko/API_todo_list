require 'rails_helper'

RSpec.describe Users::FindService do
  subject(:find_service_call) { described_class.call(params) }

  let(:user) { create(:user) }

  context 'when valid' do
    let(:params) { { email: user.email, password: user.password } }

    it { expect(find_service_call).to eq user }
  end

  context 'when with invalid email' do
    let(:params) { { email: user.email.succ, password: user.password } }

    it { expect { find_service_call }.to raise_error ActiveRecord::RecordNotFound }
  end

  context 'when with invalid password' do
    let(:params) { { email: user.email, password: user.password.succ } }

    it { expect { find_service_call }.to raise_error JWTSessions::Errors::Unauthorized }
  end
end
