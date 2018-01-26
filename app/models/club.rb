class Club < ApplicationRecord
	has_many :players
	validates :name, length: { minimum: 5 },
                      presence: true
    validates :league, length: { minimum: 3},
    				  presence: true
    validates :place, presence: true
end
