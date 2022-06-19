class Author < ApplicationRecord
  def full_name
    firstname + lastname
  end
end
