class Task < ApplicationRecord
    has_many :tasks, dependent: :destroy
    belongs_to :goals
end
