module Resolvers
  class Authors < Resolvers::Base
    type [Types::AuthorType], null: false

    def resolve
      ::Author.all
    end
  end
end
