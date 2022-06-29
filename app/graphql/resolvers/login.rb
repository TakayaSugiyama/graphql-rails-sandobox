module Resolvers
  class Login < Resolvers::Base
    type String, null: true
    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(email:, password:)
      @user = User.find_by(email: email)
      if @user.authenticate(password)
        @user.sessions.create.key
      else
        nil
      end
    end
  end
end
