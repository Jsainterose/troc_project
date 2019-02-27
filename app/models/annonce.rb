class Annonce < ApplicationRecord
    belongs_to :user
    belongs_to :category

    def self.search(search)
        if search
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
