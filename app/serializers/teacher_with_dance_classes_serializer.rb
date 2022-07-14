class TeacherWithDanceClassesSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  has_many :dance_classes
end
