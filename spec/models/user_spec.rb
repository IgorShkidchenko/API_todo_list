require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with database columns' do
    it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_index(:email) }
  end

  context 'with assosiations' do
    it { is_expected.to have_many(:projects).dependent(:destroy) }
  end

  context 'with validations' do
    let(:min_length) { User::VALID_PASSWORD_LENGTH_RANGE.min }
    let(:max_length) { User::VALID_PASSWORD_LENGTH_RANGE.max }
    let(:valid_email) { attributes_for(:user)[:email] }
    let(:invalid_email) { 'user@@example.com' }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(min_length).is_at_most(max_length) }
    it { is_expected.to allow_value(valid_email).for(:email).with_message(I18n.t('user.errors.email')) }
    it { is_expected.not_to allow_value(invalid_email).for(:email).with_message(I18n.t('user.errors.email')) }
  end
end
