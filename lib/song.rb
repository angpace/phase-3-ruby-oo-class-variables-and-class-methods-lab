class Song
attr_reader :name, :artist, :genre
attr_writer :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist
end

def self.count 
    @@count 
end

def self.artists
    @@artists.uniq
end 

def self.genres 
    @@genres.uniq
end

def self.genre_count
    @@genres.tally
end

def self.artist_count
    @@artists.tally
end

end
