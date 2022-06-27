module Resolvers
  class Author < Resolvers::Base
    type Types::AuthorType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      ::Author.where(id: id).first
    end
  end
end
