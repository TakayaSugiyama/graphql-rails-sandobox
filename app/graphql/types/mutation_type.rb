module Types
  class MutationType < Types::BaseObject
    field :update_author, mutation: Mutations::UpdateAuthor
    field :create_author, mutation: Mutations::CreateAuthor
  end
end
