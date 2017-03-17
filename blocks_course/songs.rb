# Lesson 6 - Custom Iterators
# Exercise 1 - Iterate Songs in a Playlist
# Developing a music-management program where songs can be organized into named
# playlists.  A playlist is a collection  of songs.  Given a particular playlist
# you want to provide a way to iterate though all the songs in that playlist.

class Song
  attr_reader :name, :artist, :duration
  
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
  
  def each_filename
    basename = "#{name}-#{artist}".gsub(" ", "-").downcase
    extensions = [".mp3", ".wav", ".aac"]
    extensions.each { |ext| yield basename + ext }
  end
end

song1 = Song.new("I Love This Bar", "Toby Keith", 4)
song2 = Song.new("As Good As I Once Was", "Toby Keith", 5)
song3 = Song.new("Somewhere Over the Rainbow", "IZ", 4)

class Playlist
  include Enumerable
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def each
    @songs.each do |song|
      puts "Yielding #{song.name}..."
      yield song
    end
  end
  
  def play_songs
    each { |song| song.play }
  end
  
  def add_song(song)
    @songs << song
  end
  
  def each_tagline
    @songs.each { |song| yield "#{song.name} - #{song.artist}" }
  end
  
  def each_by_artist(artist)
    select { |song| song.artist == artist}.each { |song| yield song }
  end
end

playlist = Playlist.new("Country/Western")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

#playlist.each { |song| song.play }
puts
love_songs = playlist.select { |song| song.name =~ /Love/ }
p love_songs
puts
non_love_songs = playlist.reject { |song| song.name =~ /Love/ }
p non_love_songs
puts
p playlist.any? { |song| song.artist == "IZ" }
p playlist.detect { |song| song.artist == "IZ" }
puts
song_labels = playlist.map { |song| "#{song.name} - #{song.artist}"}
p song_labels
puts
total_duration = playlist.reduce(0) { |sum, song| sum + song.duration }
p total_duration
puts
playlist.each_tagline { |tagline| puts tagline }
puts
playlist.each_by_artist("Toby Keith") { |song| song.play }

puts
song1.each_filename { |filename| puts filename }