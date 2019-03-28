require 'rails_helper'

describe ProjectPolicy do
  subject(:project_policy) { described_class.new(user, project) }

  let(:resolved_scope) { described_class::Scope.new(user, Project.all).resolve }
  let(:project) { create(:project) }
  let(:another_project) { create(:project) }
  let(:actions) { %i[show create update destroy] }

  context 'with out user' do
    let(:user) { nil }

    it { expect { project_policy }.to raise_error Pundit::NotAuthorizedError }
    it { expect { resolved_scope }.to raise_error Pundit::NotAuthorizedError }
  end

  context 'with user' do
    let(:user) { project.user }

    it { is_expected.to permit_actions(actions) }
    it { expect(resolved_scope).to include(project) }
    it { expect(resolved_scope).not_to include(another_project) }
  end
end
