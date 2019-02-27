class Annonce < ApplicationRecord
    belongs_to :user
    belongs_to :category
    paginates_per 6

    def self.search(search)
        if search
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
