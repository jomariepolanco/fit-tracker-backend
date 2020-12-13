class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :workout, :user, :location

  def workout
    self.object.workout.kind 
  end

  def user 
    self.object.user.username
  end
end
