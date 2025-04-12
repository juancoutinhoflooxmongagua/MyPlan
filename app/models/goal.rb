class Goal < ApplicationRecord
    has_many :goals, dependent: :destroy
    belongs_to :objectives
end
