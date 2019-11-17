class Room

  attr_reader :name, :guests, :songs

  def initialize(name, guest_list, playlist)
    @name = name
    @guest_list = guest_list
    @playlist = playlist
  end

  def guest_names()
    return @guest_list.map{ |guest| guest.name }
  end

  def song_names()
    return @playlist.map{ |song| song.title }
  end

  def artist_names()
    return @playlist.map{ |song| song.artist }
  end
  
end
