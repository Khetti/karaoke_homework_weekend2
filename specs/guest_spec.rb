require ("minitest/autorun")
require ("minitest/reporters")

require_relative("../guest.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuest < Minitest::Test

  def setup()
    @guest = Guest.new("Johno")
  end

  def test_can_get_guest_name()
    assert_equal("Johno", @guest.name)
  end

end
