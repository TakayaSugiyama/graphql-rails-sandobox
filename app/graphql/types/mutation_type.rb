module Types
  class MutationType < Types::BaseObject
    field :delete_author, mutation: Mutations::DeleteAuthor
    field :update_author, mutation: Mutations::UpdateAuthor
    field :create_author, mutation: Mutations::CreateAuthor
  end
end
