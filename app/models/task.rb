class Task < ActiveRecord::Base
  validates_presence_of :name
  stringify_time :due_at

  def validate
    errors.add :due_at, 'is invalid' if due_at_invalid?
  end
end
