module Mutations
  class CreateAuthor < BaseMutation
    field :author, Types::AuthorType, null: false
    argument :firstname, String,required: false
    argument :lastname, String, required: false
    argument :yob, Int, required: false
    argument :is_alive, Boolean, required: false

    def resolve(firstname:, lastname:, yob:, is_alive:)
      author = Author.create!(firstname: firstname, lastname: lastname, yob: yob, is_alive: is_alive)
      { author: author }
    end
  end
end
