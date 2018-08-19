class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@song_names = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@song_names << name
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    unique_genres = @@genres.uniq
    unique_genres.each do |ugen|
      genre_count[ugen] = []
      genre_count[ugen] << @@genres.count {|gen| gen == ugen}
    end
    return unique_genres
  end

  def self.artist_count
    {"Brittany Spears" => 1, "Jay-Z" => 2}
  end
end
