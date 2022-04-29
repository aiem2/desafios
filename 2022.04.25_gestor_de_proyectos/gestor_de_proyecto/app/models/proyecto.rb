class Proyecto < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :state, presence: true
end
