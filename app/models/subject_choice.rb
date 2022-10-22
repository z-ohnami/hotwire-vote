class SubjectChoice < ApplicationRecord
  belongs_to :subject
  has_many :votes
end
