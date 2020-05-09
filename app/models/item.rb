class Item < ApplicationRecord
    has_many :tags
    belongs_to :list
end
