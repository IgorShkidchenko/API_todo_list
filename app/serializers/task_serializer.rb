class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :complete, :deadline, :position, :comments_count

  has_many :comments
end
