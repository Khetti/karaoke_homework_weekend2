require ("minitest/autorun")
require ("minitest/reporters")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < Minitest::Test

  def setup()
    @guest1 = Guest.new("Craig")
    @guest2 = Guest.new("John")
    @guest3 = Guest.new("Mary")
    @guest4 = Guest.new("Jean")
    @guest5 = Guest.new("Margaret")
    @guest6 = Guest.new("Abigail")
    @song1 = Song.new("Schism", "Tool")
    @song2 = Song.new("Peace Sells", "Megadeth")
    @song3 = Song.new("Cowboys from Hell", "Pantera")
    @song4 = Song.new("One", "Metallica")
    @guest_list = [@guest1, @guest2, @guest3, @guest4, @guest5]
    @playlist = [@song1, @song2, @song3]
    @room = Room.new("Suite A", @guest_list, @playlist)
  end

  def test_can_get_name()
    assert_equal("Suite A", @room.name)
  end

  def test_can_get_guests()
    expected_names = ["Craig", "John", "Mary", "Jean", "Margaret"]
    assert_equal(expected_names, @room.guest_names)
  end

  def test_can_get_playlist()
    expected_songs = ["Schism", "Peace Sells", "Cowboys from Hell"]
    expected_artists = ["Tool", "Megadeth", "Pantera"]
    assert_equal(expected_songs, @room.song_names)
    assert_equal(expected_artists, @room.artist_names)
  end

  def test_can_add_guest_to_room()
    result = add_guest_to_room(@room, @guest6)
    assert_equal(6, result.length)
  end

  def test_can_remove_guest_from_room()
    result = remove_guest_from_room(@room, @guest5)
    assert_equal(4, result.length)
  end

  def test_can_add_song_to_room()
    result = add_song_to_room(@room, @song4)
    assert_equal(4, result.length)
  end

end
