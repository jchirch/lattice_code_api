class CourseSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer

  attributes :id, :name, :from_language_id, :to_language_id, :lesson
end
