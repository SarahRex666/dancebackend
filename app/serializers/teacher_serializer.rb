class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :dance_classes, :photo_url

end
