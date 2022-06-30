module Types
  class UserType < Types::BaseObject
    description "User data"

    field :email, String, null: false
    field :is_superadmin, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false

    def self.visible?(context)
      !!context[:current_user]
    end
  end
end
