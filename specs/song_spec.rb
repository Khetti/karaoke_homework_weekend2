require ("minitest/autorun")
require ("minitest/reporters")

require_relative("../song.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new("Schism", "Tool")
  end

  def test_can_get_song_title()
    assert_equal("Schism", @song.title)
  end

  def test_can_get_song_artist()
    assert_equal("Tool", @song.artist)
  end

end
