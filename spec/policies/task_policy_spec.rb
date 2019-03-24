require 'rails_helper'

describe TaskPolicy do
  subject(:task_policy) { described_class.new(user, task) }

  let(:resolved_scope) { described_class::Scope.new(user, Task.all).resolve }
  let(:task) { create(:task) }
  let(:another_task) { create(:task) }
  let(:actions) { %i[show create update destroy] }

  context 'with out user' do
    let(:user) { nil }

    it { expect { task_policy }.to raise_error Pundit::NotAuthorizedError }
    it { expect { resolved_scope }.to raise_error Pundit::NotAuthorizedError }
  end

  context 'with user' do
    let(:user) { task.project.user }

    it { is_expected.to permit_actions(actions) }
    it { expect(resolved_scope).to include(task) }
    it { expect(resolved_scope).not_to include(another_task) }
  end
end
