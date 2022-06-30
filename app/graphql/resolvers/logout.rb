module Resolvers
  class Logout < Resolvers::Base
    type Boolean, null: true

    def resolve
      Session.where(id: context[:session]).delete_all
    end
  end
end
