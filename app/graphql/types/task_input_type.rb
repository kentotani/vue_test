# app/grpahql/types/article_input_type.rb
Types::TaskInputType = GraphQL::InputObjectType.define do
  name 'TaskInputType'

  argument :lane_title, !types.String do
  end

  argument :title, !types.String do
  end

end
