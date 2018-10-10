Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createTask do
    type types[Types::TaskType]
    argument :task, Types::TaskInputType
    resolve ->(o, args, c) {
      lane = Lane.find_by!(title: args[:task][:lane_title])
      lane.tasks.create!(title: args[:task][:title])
    }
  end
end




# module Types
#   class MutationType < Types::BaseObject
#   end
# end
