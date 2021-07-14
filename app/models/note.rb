class Note < ApplicationRecord
    validates :title, :body, presence: true

    enum status: [:active, :archived]
end
