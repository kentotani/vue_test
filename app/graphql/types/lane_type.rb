Types::LaneType = GraphQL::ObjectType.define do
    name 'Lane'

    field :id, !types.ID
    field :title, !types.String
end
