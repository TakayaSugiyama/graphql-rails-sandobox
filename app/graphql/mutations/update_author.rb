module Mutations
  class UpdateAuthor < BaseMutation
    field :author, Types::AuthorType, null: false

    argument :firstname, String, required: false
    argument :id, ID, required: true
    argument :lastname, String, required: false
    argument :yob, Int, required: false
    argument :is_alive, Boolean , required: false

    def resolve(id:, firstname:, lastname:, yob:, is_alive:)
      author = Author.find(id)
      author.update!(firstname: firstname, lastname: lastname, yob: yob, is_alive: is_alive)
      { author: author }
    end
  end
end
