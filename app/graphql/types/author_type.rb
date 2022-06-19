# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    description "Author data"
    field :id, ID, null: false
    field :firstname, String, null: false
    field :lastname, String, null: false
    field :yob, Integer, null: false
    field :is_alive, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :full_name, String, null: false
    field :location, Types::LocationType, null: false
  end
end
