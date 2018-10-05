# class Types::TaskType < Types::BaseObject
Types::TaskType = GraphQL::ObjectType.define do
  name 'Task'

  field :id, !types.ID
  field :title, !types.String
  field :content, types.String
  field :lane_id, types.String
end
