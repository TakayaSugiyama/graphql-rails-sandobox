module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :author, resolver: Resolvers::Author, description: "Returns one Author instance"
    field :authors, resolver: Resolvers::Authors, description: "Return All Authors"
    field :login, resolver: Resolvers::Login, description: "return login key"
    field :logout, resolver: Resolvers::Logout, description: "logout"
    field :current_user, resolver: Resolvers::CurrentUser, description: "return current user"
  end
end
