class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments

    # an artist must have a name. 
    # An artist must also have an unique title

    validates :name, presence: true
    validates :title, uniqueness: true
end
