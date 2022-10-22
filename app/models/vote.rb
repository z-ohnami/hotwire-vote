class Vote < ApplicationRecord
  belongs_to :subject
  belongs_to :subject_choice
end
