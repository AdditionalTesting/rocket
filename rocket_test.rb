require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!



def setup
  puts "in setup"
  @rocket = Rocket.new
@prefixes = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]

end


def test_name_read
rocket1 = Rocket.new(name: "cool")

assert_equal("cool", rocket1.name)
end

def test_name_write
  @rocket.name=("sick")

assert_equal("sick", @rocket.name)
end

def test_colour_read
  rocket2 = Rocket.new(colour: "red")

  assert_equal("red", rocket2.colour)
end

def test_colour_write
  @rocket.colour=("write")

  assert_equal("write", @rocket.colour)

end

def test_flying?

  assert_equal(false, @rocket.flying?)

end

def test_lift_off_flying

  assert_equal(true, @rocket.lift_off)

end

def test_lift_off_flying_false

rocket33 = Rocket.new(flying: true)

assert_equal(false, rocket33.lift_off)

end



def test_land_flying

  assert_equal(false, @rocket.land)
end

def test_status

  assert_equal("Rocket #{@rocket.name} is ready for lift off!", @rocket.status)

end

def test_random_name
rocket66 = Rocket.new
prefix = rocket66.name.split.first
suffix = rocket66.name.split.last

  suffixes = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix", "x"]




assert_includes(@prefixes, prefix)
assert_includes(suffixes, suffix)
end

end
