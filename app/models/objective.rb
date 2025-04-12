class Objective < ApplicationRecord
    has_many :objectives, dependent: :destroy
    has_one_attached :image
end
