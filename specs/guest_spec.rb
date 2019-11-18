require ("minitest/autorun")
require ("minitest/reporters")

require_relative("../guest.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuest < Minitest::Test

  def setup()
    @guest = Guest.new("Craig")
  end

  def test_can_get_guest_name()
    assert_equal("Craig", @guest.name)
  end

end
