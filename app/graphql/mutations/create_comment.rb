module Mutations
  class CreateComment < BaseMutation
    graphql_name "CreateComment"

    field :comment, Types::CommentType, null: false
    field :result, Boolean, null: false

    argument :post_id, ID, required: true
    argument :content, String, required: true

    def resolve(**args)
      post = Post.find(args[:post_id])
      comment = post.comments.build(content: args[:content])
      comment.save
      {
          comment: comment,
          result: comment.errors.blank?
      }
    end
  end
end
