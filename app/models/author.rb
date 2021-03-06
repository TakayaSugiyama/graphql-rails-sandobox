class Author < ApplicationRecord
  def full_name
    "#{firstname} #{lastname}"
  end

  def location
    [Random.rand(90).to_f, Random.rand(90).to_f]
  end

  validates :yob, inclusion: {
    in: [*1990..2022]
  }

  validates :lastname, presence: true
end
