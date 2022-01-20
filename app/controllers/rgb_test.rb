require 'minitest/autorun'
require 'rgb'

class RgbTest < Minitest::Test
    def test_to_hex
        assert_equal '#000000', to_hex(0,0,0)asser
        assert_equal '#ffffff', to_hex(255, 255, 255)
    end
end