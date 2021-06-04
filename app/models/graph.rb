class Graph < ApplicationRecord
    validates :age, presence: true
    validates :happy, presence: true
    validates :pass, presence: true

    def self.search(search)
        Graph.where("pass LIKE?","#{search}")
    end
end
