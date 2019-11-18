class Room

  attr_reader :name, :guest_list, :playlist

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

  def add_guest_to_room(room, new_guest)
    guests_in_room = room.guest_list
    return guests_in_room << new_guest
  end

  def remove_guest_from_room(room, leaving_guest)
    guests_in_room = room.guest_list
    return guests_in_room.delete(leaving_guest)
  end

  def add_song_to_room(room, song)
    song_playlist = room.playlist
    return song_playlist << song
  end

end
