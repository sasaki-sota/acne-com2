module Types
  class CommentType < Types::BaseObject
    description "Comment"

    field :id, ID, null: false
    field :content, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    # こちらは１の方なので配列いらない
    field :post, Types::PostType, null: false
  end
end
