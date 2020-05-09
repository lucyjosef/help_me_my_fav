class Item < ApplicationRecord
    has_many :tags
    belongs_to :list

    SCRAPPABLE_SITES = [
        "asos",
        "laredoute",
        "adidas",
        "nike",
        "theorientalshop"
    ]
end
