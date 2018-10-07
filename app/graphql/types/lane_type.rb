Types::LaneType = GraphQL::ObjectType.define do
    name 'Lane'

    field :id, !types.ID
    field :title, !types.String
    connection :tasks, !Types::TaskType.connection_type
end
