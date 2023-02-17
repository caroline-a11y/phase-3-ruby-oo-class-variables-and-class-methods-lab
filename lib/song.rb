class song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artist = []
    @@genre = []
    def initializer(name, artist, genre)
       
        @@artist.push(artist)
        @@genre.push(genre)
        @@count += 1
        
        self.name = name
        self.artist = artist
        self.genre = genre
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        genre_count = {}
        @@genre.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end

        end
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artist.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end