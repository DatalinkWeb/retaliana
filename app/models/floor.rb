class Floor < ApplicationRecord::Base
    def poster
        "https://www.connexion.gr/retaliana/#{poster_url}"
    end

    def details
        "https://www.connexion.gr/retaliana/details.html"
    end
end
