class StatSerializer < ActiveModel::Serializer
  attributes :id, :user, :exercise, :weight, :comment

  def user 
    self.object.user.username
  end

  def exercise
    self.object.exercise.name
  end
end
