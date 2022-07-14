class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :admin, :first_name, :last_name, :address, :phone, :dance_classes


end
