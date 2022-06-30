module Resolvers
  class Authors < Resolvers::Base
    type [Types::AuthorType], null: true

    def resolve
      ::Author.all
    end
  end
end
