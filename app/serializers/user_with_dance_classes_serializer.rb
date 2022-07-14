class StudentWithDanceClassesSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :address, :phone, :dance_classes

  has_many :dance_classes
end
