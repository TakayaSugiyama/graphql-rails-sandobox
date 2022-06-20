module Mutations
  class DeleteAuthor < BaseMutation
    field :result, Boolean, null: false
    argument :id, ID, required: true

    def resolve(id:)
      author = Author.find(id)
      author.destroy!
      { result: true }
    end
  end
end
