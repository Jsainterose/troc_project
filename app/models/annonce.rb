class Annonce < ApplicationRecord
    belongs_to :user
    belongs_to :category
    paginates_per 3

    has_attached_file :image, styles: { medium: "600x600>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def self.search(search)
        if search
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
