# class Types::QueryType < Types::BaseObject
Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user do
    type Types::UserType
    argument :name, !types.String
    resolve ->(obj, args, ctx) {
      User.find_by(name: args['name'])
    }
  end

  field :task do
    type Types::TaskType
    argument :lane_id, !types.String
    resolve ->(obj, args, ctx) {
      Task.find_by(lane_id: args['lane_id'])
    }
  end

  field :tasks do
    # type types[Types::TaskType]
    # argument :lane_id, !types.String
    # resolve ->(obj, args, ctx) {
    #   Task.all.where(lane_id: args['lane_id'])
    # }
    type types[Types::TaskType]
    resolve -> (obj, args, ctx)  {
      Task.all
      # Lane.all.includes(:tasks)
    }
  end

  field :lanes do
    type types[Types::LaneType]
    resolve -> (obj, args, ctx)  {
      Lane.all
    }
  end

end
