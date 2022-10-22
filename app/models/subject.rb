class Subject < ApplicationRecord
  has_many :subject_choices
  has_many :votes, through: :subject_choices

  def voted_choices
    @voted_choices ||= subject_choices.sort_by { |c| c.votes.size * -1 }
  end
end
