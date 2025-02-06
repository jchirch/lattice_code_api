class UserSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer

  attributes :id, :firstname, :lastname, :email, :password
end
