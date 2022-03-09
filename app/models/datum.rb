class Datum < ApplicationRecord

    def self.search(search)
        Datum.find_by("id_pass LIKE?","#{search}")
    end
end
